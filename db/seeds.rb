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

for i in 1..20
  Beverage.create(
      name: Faker::Beer.brand,
      description: Faker::Beer.name,
      is_alcoholic: Faker::Boolean.boolean(true_ratio: 0.6)
  )

  puts "Created #{i} beers"
end

Celebrity.create(
  name: Faker::Beer.brand,

)
# Book.create(author: 'Germany', title: 81831000)