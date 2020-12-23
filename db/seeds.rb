# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Game.destroy_all

5.times do
    User.create(name: Faker::Name.name_with_middle)
end

Game.create(score: 18, user_id: 1)
Game.create(score: 16, user_id: 2)
Game.create(score: 15, user_id: 3)
Game.create(score: 13, user_id: 4)
Game.create(score: 8, user_id: 5)