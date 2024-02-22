require 'faker'

puts "lauching seed operation..."
Flat.destroy_all

4.times do
name = Faker::Name.name
address = Faker::Address.full_address
description = Faker::Lorem.sentence
price = rand(50..100)
guests = rand(1..4)

flat = Flat.new(
  name: name,
  address: address,
  description: description,
  price_per_night: price,
  number_of_guests: guests
)
puts "creating new flat #{flat}..."

flat.save!

puts "saving new flat #{flat}..."

end

puts "finished !"
