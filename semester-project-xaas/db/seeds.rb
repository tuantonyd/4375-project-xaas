# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.create([{ name: 'Gift Basket for Charity', description: '20% goes to charity', price: 150.00 }, {name: 'Pretty Basket', description: 'This basket is so pretty', price: 200.00}, {name: '713 Gift Basket', description: 'Houston themed basket', price: 281.00  }])

OrderStatus.create([{status: 'Placed'}, {status: 'Processed'}, {status: 'Shipped'}, {status: 'Completed'}])

states = ['Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 'Colorado', 'Connecticut', 'Delaware', 'District of Columbia', 'Florida', 'Georgia', 'Hawaii', 'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana', 'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota', 'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire', 'New Jersey', 'New Mexico', 'New York', 'North Carolina', 'North Dakota', 'Ohio', 'Oklahoma', 'Oregon', 'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota', 'Tennessee', 'Texas', 'Utah', 'Vermont', 'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming']

states.each do |state|
State.create({state_name: state})
end

Customer.create({first_name: "Linda", last_name: "Hickman", email: "oliver.heart.gifts@gmail.com", password: "password", password_confirmation: "password", admin: true})
