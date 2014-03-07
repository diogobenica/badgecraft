class Badge < ActiveRecord::Base
  Paperclip.interpolates :badge_name do |attachment, style|
    attachment.instance.name
  end

  has_attached_file :image, {
    :storage => :dropbox,
    :url => "/badges/:style/:badge_name.:extension",
    :styles => { :thumb => ["285x285#", :png] },
    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    :dropbox_visibility => "public"
  }
  validates_attachment :image, :presence => true,
                       :size => { :in => 0..256.kilobytes }
  validates_attachment_content_type :image, :content_type => %w(image/png)

  def issuer
    "#{EasyConfig.app.host}/issuer.json"
  end

  def criteria_url
    #criteria_path
    "teste.com"
  end
end
