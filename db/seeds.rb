# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.delete_all
Actor.delete_all
Casting.delete_all

Actor.create! name: 'Adam Rais', age: 24, nick_name: 'The Red Racoon'
Actor.create! name: 'Salman Khalifa', age: 23, nick_name: 'Skas'
Actor.create! name: 'Andrea Kennedy', age: 24, nick_name: 'ASK'

Movie.create! name: 'PLANET EVERYWHERE', rating: 'R', year: 2012, run_time: "120 minutes", director: "Michael Pavling"