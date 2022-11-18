require 'faker'


puts "🌱 Seeding spices..."

8.times do 

    User.create(
        full_name: Faker::Name.name,
        username: Faker::Internet.username,
        password: Faker::Internet.password(min_length: 8, max_length: 12),
        date_of_birth: Faker::Date.birthday
    )
end

puts "Creating Users..."

40.times do 

    Destination.create(
        destination_name: Faker::Address.city
    )
end

puts "Creating Destinations..."

30.times do 
    Trip.create(
        user_id: User.pluck(:id).sample,
        destination_id: Destination.pluck(:id).sample,
        start_date: Faker::Date.between(from: '2022-12-23', to: '2024-09-25'),
        end_date: Faker::Date.between(from: '2024-09-28', to: '2025-09-25'),
        trip_notes: Faker::Quote.yoda
    )
end

puts "Creating Trips..."




puts "✅ Done seeding!"

