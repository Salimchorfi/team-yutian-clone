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
img_url = ['http://res.cloudinary.com/dcgz3oher/image/upload/v1499874871/Raspberry1_yqleyb.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1499797676/f526daea2967001a4a97b3b48a13d6fb_vtpagi.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1499889897/Blueberry1_lzazjc.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1499874867/Strawberry_Chocolate1_nlwusv.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1499802327/nbks73joxdas9koh8kyi.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1499792160/dog_glo0qw.png',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1499889908/Zippy_Jalapeno1_dulbuj.jpg',


'http://res.cloudinary.com/dcgz3oher/image/upload/v1499889014/images_pp9tfz.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1499889012/images_1_kzu8cn.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1499889892/Pinneapple_Strawberry1_izkhup.jpg',

'http://res.cloudinary.com/dcgz3oher/image/upload/v1499889904/Triple_Citrus1_llbzxu.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1499802327/nbks73joxdas9koh8kyi.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1499889304/123170-004-E7FBD22B_s57htj.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1499888671/maxresdefault_toea7p.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1499889895/cherry1_wirjca.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1499888674/ead3d7919b2dd76126f9c45486693c89_hcgzpg.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1499889899/Mango_Raspberry1_1_ytzcmx.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1499888676/Grenade_IMG_3098_pcwzpi.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1499802327/nbks73joxdas9koh8kyi.jpg',
'http://res.cloudinary.com/dcgz3oher/image/upload/v1499874873/Mango_Raspberry1_zaughn.jpg'


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
