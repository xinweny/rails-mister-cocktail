class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process eager: true
  process convert: 'jpg'

  version :front_page do
    cloudinary_transformation width: 300, height: 300
  end
end
