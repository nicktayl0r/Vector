# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
users = User.create([
    {email: "TranNguyen@email.com", password: "abc123", phone_number: "9998887777", account_type: "carrier"},
    {email: "admin", password: "admin", phone_number: "9998887777", account_type: "admin"},
    {email: "PhilDerrick@email.com", password: "abc123", phone_number: "9998887777", account_type: "vendor"}
])
