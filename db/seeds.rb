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

# category01 = Category.create(name: "Web Development")
# category02 = Category.create(name: "Online Marketing")

# Tag.create([
#   {name: "Web Hosting", category: category01},
#   {name: "Online Store Builder", category: category01},
#   {name: "Website Security", category: category01},
#   {name: "SSL Certification", category: category01},
#   {name: "CMS", category: category01},
#   {name: "Online Payments", category: category01},
#   {name: "Mobile App", category: category01},
#   {name: "SEO", category: category02},
#   {name: "Email Marketing", category: category02},
#   {name: "Social Media", category: category02}
# ])

# (1..5).each do |index|
#   CommissionType.create([
#     {name: "Commission Type #{index}", label: "Label for commission type #{index}", icon: "icon-#{index}"}
#   ])
# end

# LinkType.create(name: "Homepage")
# LinkType.create(name: "Affiliate")

# (1..10).each do |index|
#   product= Product.create title: "Product #{index}",
#       subtitle: "Subtitle for product #{index}",
#       short_description: "Short description for product #{index}. Lorem ipsum dolor sit amet",
#       content: "Content for product #{index}. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse aliquam libero et purus ornare, interdum volutpat nulla semper. Nullam rhoncus placerat magna nec imperdiet. Suspendisse potenti. Morbi non erat sit amet est fringilla pulvinar a at odio. Aliquam quis volutpat dolor, et convallis neque. Cras orci arcu, pellentesque vel luctus vel, vehicula at mauris. Vestibulum et urna dictum lorem dignissim iaculis eu pellentesque ipsum. Nunc non nisl dignissim, malesuada tortor sed, aliquet justo. Mauris aliquam lacus turpis, vehicula mattis velit."

#     product.tags = [ Tag.find(rand(1..10))]


#     product.commission_types = [CommissionType.find(rand(1..5))]

#   # product.links << Link.create(url: "http://www.homepage#{index}.com", link_type: link_type01)
#   # product.links << Link.create(url: "http://www.affiliate#{index}.com", link_type: link_type02)

# end


# p.links << Link.create(url: "http://www.myhomepage-9.com", link_type: LinkType.find(1))

# p.links << Link.create(url: "http://www.affiliate-9.me", link_type: LinkType.find(2))
