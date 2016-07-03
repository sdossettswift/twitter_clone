# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Post.delete_all

sarah = User.create! username: "sarah", password: "12345678", email:"sarah@swift.com"
jwo = User.create! username: "jwo", password: "12345678", email:"jwo@ironyard.com"

Post.create! user: jwo, message: "HI, this is JWO"
Post.create! user: sarah, message: "HI, this is Sarah"
