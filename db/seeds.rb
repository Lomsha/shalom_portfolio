# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do |blog|
Blog.create!(
title: "My blog post  #{blog}",
body: "lorem ipsum" 

)
end 
puts "10 blog posts   created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end 

9.times do |portfolio_item|
  Portfolio.create!(
      title: "Portfolio title: #{portfolio_item}",
      subtitle:"My great price" ,
      body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque semper massa neque, quis consectetur ex mollis vitae. Ut ac malesuada velit. Quisque feugiat, mi vitae bibendum hendrerit, neque leo mattis diam, placerat luctus dolor nisl id est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam sit amet nunc tempor, malesuada dolor fermentum, luctus erat. Nullam in iaculis arcu. Curabitur non arcu arcu. Etiam non nibh consequat, laoreet nisl id, mattis augue. Nulla pulvinar justo non mattis fringilla." ,
      main_image: "https://via.placeholder.com/600.png/09f/fff",
      thumb_image: "https://via.placeholder.com/300.png/09f/fff"
  )
end 

puts "5 skills created"
puts "9 portfolio items"