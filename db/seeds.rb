# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: "Robert", email: "rob@gmail.com", password: "password")
p "user created"
Monster.create(user_id: 1, name: "Thad", age: 31, weight: 78, hunger: 3, strength: 3, poop: 3, sick: false, death: 20, level: "Champion")
p "monster created"



#  t.bigint "user_id", null: false
#     t.string "name"
#     t.integer "age"
#     t.integer "weight"
#     t.integer "hunger"
#     t.integer "strength"
#     t.integer "poop"
#     t.boolean "sick"
#     t.integer "death"
#     t.string "level"