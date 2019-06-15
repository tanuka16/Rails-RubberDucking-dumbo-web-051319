10.times do
  student = Student.create(name: Faker::Name.name, mod: rand(1..5))
end

5.times do
  student = Student.all.sample
  Duck.create(name: Faker::Dog.meme_phrase, description: Faker::Dog.breed, student_id: student.id)
end
