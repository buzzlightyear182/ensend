# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.create([
#   {email: "mlking200@gmail.com", password: "password", password_confirmation: "password", roles: "admin"},
#   {email: "jane.buzzlightyear@gmail.com", password: "password", password_confirmation: "password"}
# ])

Category.destroy_all

category01 = Category.create(name: "Web Development")
category02 = Category.create(name: "Online Marketing")

Tag.create([{name: "Web Hosting", category: category01}, {name: "Online Store Builder", category: category01}, {name: "Website Security", category: category01}, {name: "SSL Certification", category: category01}, {name: "CMS", category: category01}, {name: "Online Payments", category: category01}, {name: "Mobile App", category: category01}])

Tag.create([{name: "SEO", category: category02}, {name: "Email Marketing", category: category02}, {name: "Social Media", category: category02}])
