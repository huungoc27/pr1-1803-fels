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
