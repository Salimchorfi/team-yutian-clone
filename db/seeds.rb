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
'https://s-media-cache-ak0.pinimg.com/564x/2a/88/66/2a886680b5cb2247159bb72c3582a47f.jpg',
'https://s-media-cache-ak0.pinimg.com/564x/1a/aa/b5/1aaab5378aacc268545064a519e8705a.jpg',
'https://s-media-cache-ak0.pinimg.com/564x/99/82/56/9982569baef207fca7bdde2b4c21e9d4.jpg',
'https://s-media-cache-ak0.pinimg.com/564x/30/f6/62/30f662413ee93b06e3340a489f7e7110.jpg',
'https://s-media-cache-ak0.pinimg.com/564x/f2/20/cb/f220cb69ba63a0a877636e7a7a9d8206.jpg',
'https://s-media-cache-ak0.pinimg.com/564x/41/0f/2a/410f2a262daaca0ef4c5218baf761122.jpg',
'https://s-media-cache-ak0.pinimg.com/564x/e2/ab/3c/e2ab3c668618a8d5f6f899a3190bb1e8.jpg',
'https://s-media-cache-ak0.pinimg.com/564x/99/a7/06/99a706bd02a0cf0e7d6e2d970e9f5d22.jpg',
'https://s-media-cache-ak0.pinimg.com/564x/07/20/57/072057ac032b58f9faf656e4a2198818.jpg',

'https://images.pexels.com/photos/162686/plums-fruit-jam-violet-162686.jpeg?w=940&h=650&auto=compress&cs=tinysrgb',
'https://images.pexels.com/photos/161508/jam-berry-fruit-happen-161508.jpeg?w=940&h=650&auto=compress&cs=tinysrgb',
'https://images.pexels.com/photos/162900/cherries-fruits-sweet-cherry-cherry-jam-162900.jpeg?w=940&h=650&auto=compress&cs=tinysrgb',
'https://images.pexels.com/photos/119571/pexels-photo-119571.jpeg?w=940&h=650&auto=compress&cs=tinysrgb',
'https://images.pexels.com/photos/295012/pexels-photo-295012.jpeg?w=940&h=650&auto=compress&cs=tinysrgb',
'https://images.pexels.com/photos/162704/blueberries-cream-dessert-breakfast-162704.jpeg?w=940&h=650&auto=compress&cs=tinysrgb'
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
