# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name:  "安ヶ平雄太",
             email: "hourou_freak@yahoo.co.jp",
             password:              "password",
             password_confirmation: "password",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

500.times do |n|
    name = Faker::Hacker.noun
    content = Faker::Hacker.say_something_smart
    status = Faker::Number.between(0, 2)
    user_id = Faker::Number.between(1, 3)
    Task.create!(name: name, content: content, status: status, user_id: user_id)
end