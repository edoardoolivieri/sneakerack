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
  username: "Jack",
  email: "l@l.com",
  password: "123456"
  )

User.create!(
  username: "Head",
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
  user_id: (1..2).to_a.sample,
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
  user_id: (1..2).to_a.sample,
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
  user_id: (1..2).to_a.sample,
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
  user_id: (1..2).to_a.sample,
  link: 'https://stockx.com/air-jordan-1-retro-high-off-white-university-blue'
)
sneaker.remote_photo_url = "https://www.flightclub.com/media/catalog/product/cache/1/image/1600x1140/9df78eab33525d08d6e5fb8d27136e95/8/0/804093_02.jpg"
sneaker.save

puts 'Finished!'

puts 'Creating shop items...'

Money.locale_backend = nil

  Snkshop.create!(
    sku: 'Jordan 1',
    name: 'Air jordan 1 panda',
    description: 'description',
    size: 10,
    price: 150,
    photo_url: "https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2019%2F03%2Fair-jordan-1-panda-colorway-release-on-foot-close-0.jpg?w=960&cbr=1&q=90&fit=max"
    )

  Snkshop.create!(
    sku: 'Jordan 2',
    name: 'Air jordan 1 panda',
    description: 'description',
    size: 11,
    price: 150,
    photo_url: "https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2019%2F03%2Fair-jordan-1-panda-colorway-release-on-foot-close-0.jpg?w=960&cbr=1&q=90&fit=max"
    )

  Snkshop.create!(
    sku: 'Jordan 3',
    name: 'Air jordan 1 panda',
    description: 'description',
    size: 9,
    price: 150,
    photo_url: "https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2019%2F03%2Fair-jordan-1-panda-colorway-release-on-foot-close-0.jpg?w=960&cbr=1&q=90&fit=max"
    )

  Snkshop.create!(
    sku: 'Jordan 4',
    name: 'Air jordan 1 panda',
    description: 'description',
    size: 12,
    price: 150,
    photo_url: "https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2019%2F03%2Fair-jordan-1-panda-colorway-release-on-foot-close-0.jpg?w=960&cbr=1&q=90&fit=max"
    )

  Snkshop.create!(
    sku: 'Jordan 5',
    name: 'Air jordan 1 panda',
    description: 'description',
    size: 8,
    price: 150,
    photo_url: "https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2019%2F03%2Fair-jordan-1-panda-colorway-release-on-foot-close-0.jpg?w=960&cbr=1&q=90&fit=max"
    )

  Snkshop.create!(sku: 'Jordan 6',
    name: 'Air jordan 1 panda',
    description: 'description',
    size: 5,
    price: 150,
    photo_url: "https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2019%2F03%2Fair-jordan-1-panda-colorway-release-on-foot-close-0.jpg?w=960&cbr=1&q=90&fit=max"
    )

puts 'Finished!'
