include RandomData

5.times do
  user = User.create!(
  name: RandomData.random_name,
  email: RandomData.random_email,
  password: RandomData.random_sentence
  )
end
users = User.all

10.times do
  Topic.create!(
    name: RandomData.random_sentence,
    description: RandomData.random_paragraph
  )
end
topics =Topic.all

50.times do
  Post.create!(
    topic: topics.sample,
    user: users.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

user = User.first
user.update_attributes!(
  email: 'aminrezapour@gmail.com',
  password: '123456'
)

puts "Seed finished"
puts "#{User.count} user created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
