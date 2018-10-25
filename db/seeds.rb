User.create!(name:  "Example User",
             email: "ngoc@a.org",
             password: "123456")

99.times do |n|
  name  = Faker::Name.name
  email = "ngoc-#{n+1}@a.org"
  password = "123456"
  User.create!(name:  name,
               email: email,
               password: password)
end
