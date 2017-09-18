class Hike < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
