User.create!(name:  "Example User",
             email: "ngoc@a.org",
             password:              "foobar")

99.times do |n|
  name  = Faker::Name.name
  email = "ngoc-#{n+1}@a.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password)
end
