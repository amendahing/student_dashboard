# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Dojo.create(branch: "CD Seattle", street: "111 Main St", city: "Bellevue", state: "WA")
# Dojo.create(branch: "CD San Jose", street: "2222 Zanker St", city: "San Jose", state: "CA")
# Dojo.create(branch: "CD Burbank", street: "333 Olive St", city: "Burbank", state: "CA")
# Dojo.create(branch: "CD Chicago", street: "444 Institute St", city: "Chicago", state: "IL")


Student.create(fname: "Veronica", lname: "H", email: "vhing@gmail.com", dojo: Dojo.first)
Student.create(fname: "Dawn", lname: "H", email: "dawn@gmail.com", dojo: Dojo.first)
Student.create(fname: "Tania", lname: "S", email: "tania@gmail.com", dojo: Dojo.first)
Student.create(fname: "Hal", lname: "Z", email: "hal@gmail.com", dojo: Dojo.second)
Student.create(fname: "Tina", lname: "L", email: "tina@gmail.com", dojo: Dojo.second)
Student.create(fname: "Momo", lname: "V", email: "momo@gmail.com", dojo: Dojo.second)
