User.create!(name:  "Example User",
             email: "ngoc@a.org",
             password: "123456",
             admin:true
             )

99.times do |n|
  name  = Faker::Name.name
  email = "ngoc-#{n+1}@a.org"
  password = "123456"
  User.create!(name:  name,
               email: email,
               password: password)
end
10.times do |n|
  category = Category.create(name: "Category #{n+1}")
end

15.times do |n|
  name  = "lession #{n+1}",
  status = "status",
  score = 1
  category_id = Category.first.id
  user_id = User.first.id
  Lesson.create!(name: name,
              status: status,
              score: score,
              category_id: category_id,
              user_id: user_id)
end

30.times do |n|
  name = "word #{n+1}"
  learned = 1
  category_id = Category.first.id
  lesson_id = Lesson.first.id
  Word.create!(name: name,
              learned: learned,
              lesson_id: lesson_id,
              category_id: category_id)
end

users = User.all
user = users.first
following = users[2..20]
followers = users[3..30]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
