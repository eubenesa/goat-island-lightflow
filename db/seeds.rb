# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  User.create(
    github_username: Faker::Internet.user_name,
    lhl_member: true
  )
end

20.times do
  Question.create(
    subject: Faker::HipsterIpsum.sentence[0..-2] + "?",
    content: Faker::HipsterIpsum.paragraph,
    user_id: Random.new.rand(1..10)
  )
end

50.times do
  Answer.create(
    content: Faker::HipsterIpsum.paragraph,
    user_id: Random.new.rand(1..10),
    question_id: Random.new.rand(1..20)
  )
end
