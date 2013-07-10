class Character < ActiveRecord::Base
has_many :castings
has_many :actors, through: :castings
has_many :movies, through: :castings

  attr_accessible :age, :description, :gender, :name, :actor_id, :movie_id, :character_image

  mount_uploader :character_image, CharacterImageUploader
end
