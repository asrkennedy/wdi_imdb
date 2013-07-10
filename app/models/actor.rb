class Actor < ActiveRecord::Base
  has_many :castings
  has_many :movies, through: :castings
  has_many :characters, through: :castings

  attr_accessible :age, :nick_name, :name, :movie_id, :character_id, :actor_image

  mount_uploader :actor_image, ActorImageUploader
end
