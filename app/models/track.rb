class Track < ActiveRecord::Base
  attr_accessor :name, :gpx
  belongs_to :hike
  has_many :tracksegments, :dependent => :destroy
  has_many :points, :through => :tracksegments

  has_attached_file :gpx

end
