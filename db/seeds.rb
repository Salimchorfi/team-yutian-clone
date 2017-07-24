# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"
Jam.destroy_all
User.destroy_all

puts 'Creating 5 fake users...'
img_url = Array.new(20)
number = 0
img_url = [
  "http://res.cloudinary.com/dcgz3oher/image/upload/v1500063343/bcbner6doze947y3ort4.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500063355/b9wfctnhxq1v9v79kyjt.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500063342/fjinnx7fqfbliqansc2j.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500063350/vmenp0zpsvtt2aswd7te.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500063348/yakarb1gqrwaryemvy7g.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500061503/lxggru77r25rcncvizcm.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500061502/vdqajieelhfm4iem2p3h.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500061500/ntfqnbvo5rcpadb3gig2.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500061499/lyajjppyhoz49xtojyx8.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500061498/swgveimxrwarnocvhwuf.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500061496/w8j6avvzr0uiaxcgnhmh.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500061492/drzrcc3psyhmp8nq5kvh.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500061491/ec30qzkqoudg8qfvnglv.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500859587/jam-1168054_1920_epsdgv.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500859583/jam-823653_1920_pqtvvj.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500859579/jam-1308014_1920_zuwiaz.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500859577/jam-2444752_1920_wxpnsp.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500859575/croissants-569075_1920_rmjwcj.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500859573/jam-1678918_1920_jzh3qm.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500859570/strawberry-jam-1329440_1920_dxhnwq.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500859767/ginger-819694_1920_wz08yp.jpg",
"http://res.cloudinary.com/dcgz3oher/image/upload/v1500063343/bcbner6doze947y3ort4.jpg"]
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
    number = number +1
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
