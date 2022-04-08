# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

###################
# Add admin users #
# ############### #

admins = ['Lorena', 'Bruno', 'Limon']

admins.each do |name|

  User.create email: "#{name}@itamcoffe.mx", name: name, password: "#{name}itamcoffe", admin: true

end

puts 'Admin users has been created'
