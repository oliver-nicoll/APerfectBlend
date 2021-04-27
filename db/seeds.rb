# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(product_name: 'Honey', product_description: "Local Keiner's Apiary wildflower honey", sold_at: 9, instock: 5, image: "https://ibb.co/z8dHQnh")
User.create(vendor: true, role: 1, username: "KeinerHA", name: "Harold Keiner", email: "keinerapiary@gmail.com", password: "1234")
User.create(role: 1, username: "test 2", name: "Suzanne Test", email: "test@btbm.com", password: "1234")


User.create(vendor: false, role: 0, username: "shopper", name: "Not Vendor", email: "test@test.com", password: "1234")
User.create(role: 0, username: "test", name: "Not Vendore", email: "test@t.com", password: "password" )

User.create(role: 2, username: "nicolldon", name: "Nicoll Oliver", email: "btbm@aperfectblend.com", password: "password" )
