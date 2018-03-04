class PhotoUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:

 include Cloudinary::CarrierWave


end
