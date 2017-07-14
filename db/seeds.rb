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
'http://res.cloudinary.com/dcgz3oher/image/upload/v1500063506/j9hngelfcj7wrt8qdjud.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1500063505/bj8uymrxt5l2ipevlewr.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1500063504/uedpswoagiik9autg1oy.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1500063503/lapi0jtwt9bcvfaaafap.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1500063501/g0weqcibwkehr4e07muw.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1500063500/tsqlzqolobdwi7pcejly.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1500063498/evus5aorjexeffmygmvd.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1500063497/nchcvm1uoxvvrb1ortr4.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1500063496/nmx0mkxnyajioiwo0md5.jpg',

'http://res.cloudinary.com/dcgz3oher/image/upload/v1500063495/sq3qwbzolrsusbdfspyl.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1500063493/hzvjaqof8repjgpzblr3.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1500063491/qmqngn48yd7f0bdlhyii.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1500063493/hzvjaqof8repjgpzblr3.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1500063491/qmqngn48yd7f0bdlhyii.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1500063489/xlsbuliant1xen8juc3o.jpg'
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
