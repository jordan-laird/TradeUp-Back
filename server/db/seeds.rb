# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# require *add api here*
User.destroy_all
Transaction.destroy_all
Stock.destroy_all

user1=User.create(first_name: 'Jordan', last_name: 'Laird', email: 'jordan@example.com', password: '1234')
user1=User.create(first_name: 'Janu', last_name: 'Orega', email: 'janu@example.com', password: 'pass')
user1=User.create(first_name: 'Hannah', last_name: 'Banana', email: 'hannah@example.com', password: "word")
user1=User.create(first_name: 'Meg', last_name: 'Memeg', email: 'memegyou@example.com', password: '0000')
puts "There are now #{User.count} rows in the users table"