# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

author = Author.create(name: 'Shraddha', phone_number: 234456122)
post = Post.create(title: 'Star Wars', content: 'Hello, world, we are here for the first time and we are going to make life awesome' , summary: 'Star Wars', category: 'Fiction')
