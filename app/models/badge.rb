class Badge < ActiveRecord::Base
  attr_accessor :image, :image_file_name

  has_attached_file :image
  # validates_attachment :image, :presence => true,
  #                      :content_type => { :content_type => "image/png" },
  #                      :size => { :in => 0..256.kilobytes }

  def issuer
    "#{EasyConfig.app.host}/issuer.json"
  end
  def criteria_url
    #criteria_path
    "teste.com"
  end
end
