User.create!(
  email: "benshalom.kariuki@kopokopo.com",
  password: "Bens!2020",
  password_confirmation: "Bens!2020",
  name: "Admin User",
  roles: "site_admin"
)

puts "1 Admin user created"

User.create!(
  email: "kariswanjo@gmail.com",
  password: "Bens!2020",
  password_confirmation: "Bens!2020",
  name: "Regular User",
)

puts "1 regular user created"



3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
)
end


10.times do |blog|
Blog.create!(
title: "My blog post  #{blog}",
body: "lorem ipsum",
topic_id: Topic.last.id 

)
end 
puts "10 blog posts   created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end 

8.times do |portfolio_item|
  Portfolio.create!(
      title: "Portfolio title: #{portfolio_item}",
      subtitle:"Ruby on Rails" ,
      body: "Lorem ipsum dolor sit amet, 
      consectetur adipiscing elit. Quisque semper massa neque, quis consectetur ex mollis vitae. 
      Ut ac malesuada velit. Quisque feugiat, mi vitae bibendum hendrerit, 
      neque leo mattis diam, placerat luctus dolor nisl id est. 
      Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. 
      Etiam sit amet nunc tempor, malesuada dolor fermentum, luctus erat. Nullam in iaculis arcu. 
      Curabitur non arcu arcu. Etiam non nibh consequat, laoreet nisl id, mattis augue. 
      Nulla pulvinar justo non mattis fringilla." ,
      main_image: "https://via.placeholder.com/100.png/09f/fff",
      thumb_image: "https://via.placeholder.com/100.png/09f/fff"
  )
end 
1.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle:"Angular" ,
        body: "Lorem ipsum dolor sit amet, 
        consectetur adipiscing elit. Quisque semper massa neque, quis consectetur ex mollis vitae. 
        Ut ac malesuada velit. Quisque feugiat, mi vitae bibendum hendrerit, 
        neque leo mattis diam, placerat luctus dolor nisl id est. 
        Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. 
        Etiam sit amet nunc tempor, malesuada dolor fermentum, luctus erat. Nullam in iaculis arcu. 
        Curabitur non arcu arcu. Etiam non nibh consequat, laoreet nisl id, mattis augue. 
        Nulla pulvinar justo non mattis fringilla." ,
        main_image: "https://via.placeholder.com/100.png/09f/fff",
        thumb_image: "https://via.placeholder.com/100.png/09f/fff"
    )
  end 
  
3.times do |technology|
 Portfolio.last.technologies.create!(
  name: "Technology #{technology}"
)
end 
puts "5 skills created"
puts "9 portfolio items"

puts "3 technologies  created"
puts "3 technologies  created"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
