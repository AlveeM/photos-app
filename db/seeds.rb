# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

count = 0 
images = 200

puts "-----------------"
puts "seeding started"
puts "-----------------"

images.times do
  # percentage done 
  count += 1
  puts "#{count/images.to_f*100}%"
  # image creation
  Image.create(created_at: (0..30).to_a.sample.days.ago, image_url: "https://loremflickr.com/320/240?random=#{(0...999).to_a.sample}", title: Faker::Movie.title, description: Faker::Lorem.paragraph(sentence_count: 3, supplemental: false, random_sentences_to_add: 4))
end

puts "-----------------"
puts "seeding successful!"
puts "-----------------"
