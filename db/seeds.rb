for i in 1..20
    Toy.create(
        name: Faker::Game.title,
        description: "The genre is #{Faker::Game.genre} and it is a #{Faker::Game.platform}",
        date: Faker::Date.backward(days: 365),
        user: Faker::Name.name
    )

    puts "Created #{i} records"
end

for i in 1..20
  Food.create(
      name: Faker::Food.dish,
      calories: Faker::Number.number(digits:3),
  )

  puts "Created #{i} dishes"
end
# Book.create(author: 'Germany', title: 81831000)