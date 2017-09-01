# coding: utf-8
100.times do |n|
   name = Faker::Name.name
   email = "example#{n+1}@example.com"
   password = "password"
	 uid = SecureRandom.uuid
User.create!(name: name, email: email, password: password, uid:uid)
end

100.times do |n|
   rand_id = 0
   until User.find_by_id(rand_id) != nil do
       rand_id = rand(1..500)
   end
   content = "内容#{n+1}"
Topic.create!(content: content, user_id: rand_id)
end

100.times do |n|
   topic_id = 0
   until Topic.find_by_id(topic_id) != nil do
       topic_id = rand(1..500)
   end
	 user_id = 0
	 until User.find_by_id(user_id) != nil do
			 user_id = rand(1..500)
	 end
   content = "コメント#{n+1}"
Comment.create!(content: content, topic_id: topic_id, user_id: user_id)
end
