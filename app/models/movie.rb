class Movie < ActiveRecord::Base
  has_many :castings
  has_many :actors, through: :castings
  has_many :characters, through: :castings

  attr_accessible :director, :name, :rating, :run_time, :year, :actor_id, :character_id, :movie_image

  mount_uploader :movie_image, MovieImageUploader
end
