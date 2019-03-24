# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Sneaker.destroy_all

puts 'Creating sneakers...'

sneaker = Sneaker.create!(
  name: 'Jordan 1 Retro High Off-White Chicago',
  brand: 'Jordan x Off-White',
  description: 'The Off-White x Air Jordan 1 Retro High OG was one of the most highly anticipated footwear collaborations of 2017. It marked the first time Virgil Abloh, founder of the Milan-based fashion labled and Jordan Brand had teamed up. Nicknamed "The 10" edition, this pair comes in the original Chicago-themed white, black and varsity red colorway.',
  price_per_sneaker: 190,
  size: 11
)
sneaker.remote_photo_url = "https://stockx-360.imgix.net/air-jordan-1-retro-high-off-white-chicago_TruView/Images/air-jordan-1-retro-high-off-white-chicago_TruView/Lv2/img04.jpg?auto=format,compress&q=90&updated_at=1538080256&w=1000"
sneaker.save

sneaker = Sneaker.create!(
  name: 'Converse Chuck Taylor All-Star 70s Hi Off-White',
  brand: 'Converse x Off-White',
  description: 'Virgil is back at it again with the Converse Chuck Taylor All-Star 70s Hi Off-White. These legendary sneakers come with an all-white upper, stripped midsole, and orange sole. The Off-White Chucks released in October 2018 and retailed for $130. Add some versatile heat to your sneaker collection and buy these on StockX.',
  price_per_sneaker: 120,
  size: 10
)
sneaker.remote_photo_url = "https://stockx-360.imgix.net/Converse-Chuck-Taylor-All-Star-70s-Hi-Off-White/Images/Converse-Chuck-Taylor-All-Star-70s-Hi-Off-White/Lv2/img22.jpg?auto=format,compress&q=90&updated_at=1539027493&w=1000"
sneaker.save

sneaker = Sneaker.create!(
  name: 'Adidas Yeezy Boost 350 V2 Trfrm',
  brand: 'Adidas',
  description: 'Get a Yeezy 350 in its truest form and grab the adidas Yeezy Boost 350 V2 Trfrm. This Yeezy Boost 350 comes with a grey upper plus orange accents, translucent stripe with orange accents, grey midsole with orange accents, and a grey sole. These sneakers released in March 2019 and retailed for $220. Only true sneakerheads wear Yeezy’s so place a Bid on StockX today.',
  price_per_sneaker: 199,
  size: 8
)
sneaker.remote_photo_url = "https://stockx.imgix.net/adidas-Yeezy-Boost-350-V2-True-Form-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&trim=color&updated_at=1553182466&w=1000"
sneaker.save

sneaker = Sneaker.create!(
  name: 'Jordan 3 Retro Tinker White University Red',
  brand: 'Jordan',
  description: 'Jordan Brand is bringing more fire kicks to the sneaker scene with the release of the Jordan 3 Retro Tinker White University Red. This AJ 3 comes with a white upper plus red accents, white Nike “Swoosh”, white midsole, and a white sole. These sneakers released in March 2019 and retailed for $225. Make Tinker proud and grab these on StockX today.',
  price_per_sneaker: 179,
  size: 11
)
sneaker.remote_photo_url = "https://stockx.imgix.net/Air-Jordan-3-Retro-Tinker-White-University-Red.png?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&trim=color&updated_at=1551413308&w=1000"
sneaker.save

puts 'Finished!'
