class Casting < ActiveRecord::Base
  belongs_to :actor
  belongs_to :movie
  belongs_to :character

  attr_accessible :actor_id, :character_id, :movie_id
end
