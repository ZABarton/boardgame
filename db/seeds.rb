require 'faker'

User.delete_all
Game.delete_all
Publisher.delete_all
Review.delete_all
Tag.delete_all
Ownership.delete_all
Tagging.delete_all

users = 100.times.map do
  User.create!( first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                username: Faker::Hacker.noun,
                hash_password: "password",
                city: Faker::Address.city,
                state: Faker::Address.state_abbr,
                email: Faker::Internet.email)
end

games = 100.times.map do
  Game.create!( title: Faker::Commerce.product_name,
                description: Faker::Lorem.sentence,
                publisher_id: rand(1..10),
                min_players: rand(2..4),
                max_players: rand(5..8),
                avg_time: rand(15..60))
end

publishers = 10.times.map do
  Publisher.create!(name: Faker::Company.name,
                    website: Faker::Internet.url,
                    city: Faker::Address.city,
                    state: Faker::Address.state_abbr)
end

reviews = 50.times.map do
  Review.create!(user_id: rand(1..100),
                 game_id: rand(1..100),
                 score: rand(1..10),
                 notes: Faker::Lorem.paragraph)
end

tag = 25.times.map do
  Tag.create!(category: Faker::Hacker.adjective)
end

tagging = 200.times.map do
  Tagging.create!(game_id: rand(1..100),
                 tag_id: rand(1..25))
end

users.each do |user|
  num_of_games = games.sample(rand(2..6))
  num_of_games.each do |game|
    Ownership.create!(user_id: user.id,
                      game_id: game.id)
  end
end
