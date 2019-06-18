# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = Product.create(brand: 'Apple', model: 'iPhone 7', variant: 'grey', price: '100.000', short_description: 'iphone', long_description: '16 GB', type_product: 'subscription plans')
p2 = Product.create(brand: 'Samsung', model: 'Galaxy S9', variant: 'grey', price: '100.000', short_description: 'Galaxy', long_description: '16 GB', type_product: 'pre-paid cards')
p3 = Product.create(brand: 'Bose', model: 'wireless', variant: 'grey', price: '50.000', short_description: 'wireless', long_description: 'wireless', type_product: 'handset')


u1 = User.create(first_name: 'Josefina', last_name: 'Valenzuela', email: 'j@v.com')
a1 = Address.create(phone:'+56942501928', address_line_1: "Los cactus 1898", city: 'Santiago', country: 'Chile', zip_code: 000000, user_id: u1.id)
o1 = Order.create(user_id: u1.id, product_id: p1.id, shipping_address_id: a1.id, biling_address_id: a1.id)