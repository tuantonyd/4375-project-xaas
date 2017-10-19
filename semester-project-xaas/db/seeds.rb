# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.create([{ name: 'Gift Basket for Charity', description: '20% goes to charity', price: 150.00 }, {name: 'Pretty Basket', description: 'This basket is so pretty', price: 200.00}, {name: '713 Gift Basket', description: 'Houston themed basket', price: 281.00  }])

OrderStatus.create([{status: 'Placed'}, {status: 'Processed'}, {status: 'Shipped'}, {status: 'Completed'}])