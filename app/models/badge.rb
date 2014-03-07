class Badge < ActiveRecord::Base
  mount_uploader :image, BadgeImageUploader

  def issuer
    "#{EasyConfig.app.host}/issuer.json"
  end

  def criteria_url
    #criteria_path
    "teste.com"
  end
end
