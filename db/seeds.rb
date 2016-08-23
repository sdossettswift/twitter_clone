require 'faker'

User.delete_all
Post.delete_all

sarah = User.create! username: "sarah", password: "12345678", email:"sarah@swift.com"
jwo = User.create! username: "jwo", password: "12345678", email:"jwo@ironyard.com"

Post.create! user: jwo, message: "HI, this is JWO"
Post.create! user: sarah, message: "HI, this is Sarah"

15.times do |user|
  user = User.create! username: Faker::Internet.user_name, password: "12345678", email: Faker::Internet.free_email
  post = Post.create! user: user, message: Faker::Hipster.paragraph(2)
end
