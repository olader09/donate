class Picture < ApplicationRecord
  
  mount_uploader :picture, PictureUploader

  mount_base64_uploader :picture, PictureUploader
end