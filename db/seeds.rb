# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"
Jam.destroy_all


puts 'Creating 5 fake users...'
img_url = Array.new(20)
number = 0
img_url = [

"http://res.cloudinary.com/dcgz3oher/image/upload/v1500063355/b9wfctnhxq1v9v79kyjt.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500063355/b9wfctnhxq1v9v79kyjt.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500063355/b9wfctnhxq1v9v79kyjt.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500063355/b9wfctnhxq1v9v79kyjt.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500063355/b9wfctnhxq1v9v79kyjt.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500063355/b9wfctnhxq1v9v79kyjt.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500063355/b9wfctnhxq1v9v79kyjt.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500063355/b9wfctnhxq1v9v79kyjt.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500063355/b9wfctnhxq1v9v79kyjt.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500063355/b9wfctnhxq1v9v79kyjt.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500063355/b9wfctnhxq1v9v79kyjt.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500063355/b9wfctnhxq1v9v79kyjt.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500063355/b9wfctnhxq1v9v79kyjt.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500063355/b9wfctnhxq1v9v79kyjt.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500063355/b9wfctnhxq1v9v79kyjt.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500063355/b9wfctnhxq1v9v79kyjt.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500063355/b9wfctnhxq1v9v79kyjt.jpg"
]
5.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: '0123456789',
  )
  4.times do
    jams = Jam.create!(
      name: Faker::Food.ingredient,
      price: (5..100).to_a.sample,
      description: Faker::Food.spice,
      user: user,
      remote_photo_url: img_url[number],
      address: Faker::Address.street_address
     )
    number = number + 1
    5.times do
      comments = Comment.create!(
        content: Faker::ChuckNorris.fact,
        user: user,
        jam: jams
      )
    end
  end
end


# puts 'Creating 20 fake jams...'

# 20.times do
#   jams = Jam.new(
#     name: Faker::Food.ingredient,
#     price: (5..100).to_a.sample,
#     description: Faker::Food.spice,
#     user_id: Yutian
#   )
#   jams.save!
# end

puts 'Finished!'
