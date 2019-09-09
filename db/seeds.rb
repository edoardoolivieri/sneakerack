# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
User.destroy_all
Sneaker.destroy_all
Snkshop.destroy_all
puts 'Creating User !'

User.create!(
  username: "Edoardo",
  email: "l@l.com",
  password: "123456"
  )

User.create!(
  username: "Dixit",
  email: "e@e.com",
  password: "123456"
  )
puts 'Finished!'

puts 'Creating sneakers...'

sneaker = Sneaker.create!(
  name: 'Converse Chuck Taylor All-Star 70s Hi Off-White',
  brand: 'Converse x Off-White',
  description: 'Virgil is back at it again with the Converse Chuck Taylor All-Star 70s Hi Off-White. These legendary sneakers come with an all-white upper, stripped midsole, and orange sole. The Off-White Chucks released in October 2018 and retailed for $130. Add some versatile heat to your sneaker collection and buy these on StockX.',
  price_per_sneaker: 120,
  size: 10,
  user_id: 1,
  link: 'https://stockx.com/converse-chuck-taylor-all-star-70s-hi-off-white'
)
sneaker.remote_photo_url = "https://stockx-360.imgix.net/Converse-Chuck-Taylor-All-Star-70s-Hi-Off-White/Images/Converse-Chuck-Taylor-All-Star-70s-Hi-Off-White/Lv2/img22.jpg?auto=format,compress&q=90&updated_at=1539027493&w=1000"
sneaker.save

sneaker = Sneaker.create!(
  name: 'Adidas Yeezy Boost 350 V2 Trfrm',
  brand: 'Adidas',
  description: 'Get a Yeezy 350 in its truest form and grab the adidas Yeezy Boost 350 V2 Trfrm. This Yeezy Boost 350 comes with a grey upper plus orange accents, translucent stripe with orange accents, grey midsole with orange accents, and a grey sole. These sneakers released in March 2019 and retailed for $220. Only true sneakerheads wear Yeezy’s so place a Bid on StockX today.',
  price_per_sneaker: 199,
  size: 8,
  user_id: 1,
  link: 'https://stockx.com/adidas-yeezy-boost-350-v2-true-form'
)
sneaker.remote_photo_url = "https://stockx.imgix.net/adidas-Yeezy-Boost-350-V2-True-Form-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&trim=color&updated_at=1553182466&w=1000"
sneaker.save

sneaker = Sneaker.create!(
  name: 'Jordan 3 Retro Tinker White University Red',
  brand: 'Jordan',
  description: 'Jordan Brand is bringing more fire kicks to the sneaker scene with the release of the Jordan 3 Retro Tinker White University Red. This AJ 3 comes with a white upper plus red accents, white Nike “Swoosh”, white midsole, and a white sole. These sneakers released in March 2019 and retailed for $225. Make Tinker proud and grab these on StockX today.',
  price_per_sneaker: 179,
  size: 11,
  user_id: 1,
  link: 'https://stockx.com/air-jordan-3-retro-tinker-white-university-red'
)
sneaker.remote_photo_url = "https://stockx.imgix.net/Air-Jordan-3-Retro-Tinker-White-University-Red.png?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&trim=color&updated_at=1551413308&w=1000"
sneaker.save

sneaker = Sneaker.create!(
  name: 'Jordan 1 Retro High Off-White University Blue',
  brand: 'Jordan',
  description: 'Time for some Tobacco Road vibes with these Jordan 1 Retro Off-Whites. Also known as the “UNC” editions, these Jordan 1s are the third colorway designed by Virgil Abloh and made in collaboration with his Off-White label. The sneakers come in a white, dark powder blue and cone colorway, with a white and blue deconstructed leather upper and Off-White detailing throughout. If you’re a fan of Virgil Abloh’s work and want to rep Off-White, this pair is another must-have.',
  price_per_sneaker: 179,
  size: 11,
  user_id: 1,
  link: 'https://stockx.com/air-jordan-1-retro-high-off-white-university-blue'
)
sneaker.remote_photo_url = "https://www.flightclub.com/media/catalog/product/cache/1/image/1600x1140/9df78eab33525d08d6e5fb8d27136e95/8/0/804093_02.jpg"
sneaker.save

puts 'Finished!'

puts 'Creating shop items...'

Money.locale_backend = nil

  Snkshop.create!(
    sku: 'Jordan 1 Retro High Rookie of the Year',
    name: 'Jordan 1 Retro High Rookie of the Year',
    description: 'What better way to celebrates MJ’s rookie of the year award than clinching the Jordan 1 Retro High Rookie of the Year. This unique shoe comes with a white and harvest leather upper, black Nike “Swoosh”, white midsole, and a black sole',
    size: 10,
    price: 209.99,
    photo_url: "https://stockx-360.imgix.net/Air-Jordan-1-Retro-High-Rookie-Of-The-Year/Images/Air-Jordan-1-Retro-High-Rookie-Of-The-Year/Lv2/img15.jpg?auto=format,compress&q=90&updated_at=1540493582&w=2200"
    )

  Snkshop.create!(
    sku: 'Air Max 97 Neon Seoul',
    name: 'Air Max 97 Neon Seoul',
    description: 'Match the neon lights in the city of Seoul after copping the Air Max 97 Neon Seoul. This AM 97 comes with a black upper plus red, silver, and blue accents, red Nike “Swoosh”, black midsole, and a black sole',
    size: 7,
    price: 199.99,
    photo_url: "https://stockx-360.imgix.net/Nike-Air-Max-97-Neon-Seoul/Images/Nike-Air-Max-97-Neon-Seoul/Lv2/img04.jpg?auto=format,compress&q=90&updated_at=1555622480&w=2200"
    )

  Snkshop.create!(
    sku: 'Jordan 4 Retro Travis Scott Cactus Jack',
    name: 'Jordan 4 Retro Travis Scott Cactus Jack',
    description: 'The only way to describe the Travis Scott Air Jordan 4 Retros properly would be to use the rappers own adlib: la flame. These Jordan 4s were made in collaboration with rapper, Travis Scott and nicknamed the “Cactus Jack” edition. Similar in design to the infamous Eminem pair, these feature a lighter shade of blue suede on the upper. Black accents, a red liner, paint splatter detailing, a white midsole and “Cactus Jack” branding on the back heel tab finish things off for this pair',
    size: 11,
    price: 389.79,
    photo_url: "https://stockx-360.imgix.net/Air-Jordan-4-Retro-Travis-Scott-Cactus-Jack/Images/Air-Jordan-4-Retro-Travis-Scott-Cactus-Jack/Lv2/img06.jpg?auto=format,compress&q=90&updated_at=1538080256&w=2200"
    )

puts 'Finished!'
