require 'faker'


puts "🌱 Seeding spices..."

8.times do 
    User.create(
        full_name: Faker::Name.name,
        username: Faker::Internet.user('username'),
        password: Faker::Internet.password(min_length: 8, max_length: 12),
        date_of_birth: Faker::Date.birthdate({ min: 18, max: 65, mode: 'age' })
    )
end

puts "Creating Users..."

30.times do 
    Trip.create(
        user_id: User.all.sample.id,
        destination_id: Destination.all.sample.id,
        start_date: Faker::Date.future(3),
        end_date: Faker::Date.future(5),
        trip_notes: Faker::Quote.yoda
    )
end

puts "Creating Trips..."

40.times do 
    Destination.create(
        city_name: Faker::Address.city,
        country_name: Faker::Address.country,
        image_url: Faker::LoremFlickr.image(size: "50x60", search_terms: ['travel', 'country'])
    )
end

puts "Creating Destinations..."


puts "✅ Done seeding!"

