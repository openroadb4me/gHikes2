class Hike < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :tracks, :dependent => :destroy
  has_many :tracksegments, :through => :tracks
end
