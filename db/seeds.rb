for i in 1..10
    Book.create(
        author: Faker::Book.author,
        title: Faker::Book.title,
        publisher: Faker::Book.publisher,
    )

    puts "Created #{i} records"
end
# Book.create(author: 'Germany', title: 81831000)