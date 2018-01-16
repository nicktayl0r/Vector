# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Order.destroy_all
Vendor.destroy_all
Carrier.destroy_all
users = User.create([
    {account_name: "a", account_number: 0},
    {account_name: "v", account_number: 0},
    {account_name: "c", account_number: 0},
    {account_name: "c", account_number: 1},
    {account_name: "v", account_number: 1}
])
vendors = Vendor.create([
    {account_code: "v0", email: "Cindy@gmail.com"},
    {account_code: "v1", email: "Grant@gmail.com"}
])
carriers = Carrier.create([
    {account_code: "c0", email: "Ueda@gmail.com"},
    {account_code: "c1", email: "Walsh@gmail.com"}
])
orders = Order.create([
    {order_no: 1  , cubic_meters: 8.09  , weight: 345   , order_status: "o" , ask: 150.99 , vendor: "v0", driver: "c1" },
    {order_no: 2  , cubic_meters: 16.55 , weight: 5660  , order_status: "o" , ask: 2000.50 , vendor: "v1", driver: "c1" }
])