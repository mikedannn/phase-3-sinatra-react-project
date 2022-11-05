require 'faker'


puts "🌱 Seeding spices..."

5.times do 

    User.create(
        full_name: Faker::Name.name,
        username: Faker::Internet.user('username'),
        password: Faker::Internet.password(min_length: 8, max_length: 12),
        date_of_birth: Faker::Date.birthdate({ min: 18, max: 65, mode: 'age' })
    )
end


puts "✅ Done seeding!"

