require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
10.times do
  restaurant = [name: Faker::TvShows::RickAndMorty.character,
                address: Faker::Address.full_address,
                phone_number: Faker::PhoneNumber.phone_number,
                category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample]
  Restaurant.create!(restaurant)
end
puts 'Finished!'
