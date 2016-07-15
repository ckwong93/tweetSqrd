require 'faker'

#users

20.times do
	User.create(name: Faker::Name.name ,email: Faker::Internet.email, password: '123')
end

#tweets
100.times do
	Tweet.create(user_id: rand(1..15), content: Faker::Lorem.sentence)
end


#friends
50.times do
	Friend.create(follower_id: rand(1..15), followee_id: rand(1..15))
end
