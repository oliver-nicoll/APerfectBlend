# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(product_name: 'Honey', product_description: "Local Keiner's Apiary wildflower honey", sold_at: 9, instock: 5, image_url: "https://ibb.co/z8dHQnh")
User.create(vendor: true, username: "KeinerHA", name: "Harold Keiner", email: "keinerapiary@gmail.com", password: "1234")
User.create(vendor: false, username: "shopper", name: "Not Vendor", email: "test@test.com", password: "1234")
