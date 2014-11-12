# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require_relative '../lib/assets/scraper'

for i in 1..8
  Scraper.new.create_apartments(i)
end

User.create(
  first_name: "Juan",
  last_name: "Pablo",
  age: 33,
  gender: "male",
  orientation: "straight",
  looking_for: "women",
  prof_img: "https://pbs.twimg.com/profile_images/3786193006/fd914ef5d5e4afd68ac0fcbf7c654e6e_400x400.jpeg",
  )

User.create(
  first_name: "Jon",
  last_name: "Stewart",
  age: 30,
  gender: "male",
  orientation: "straight",
  looking_for: "women",
  prof_img: "http://www.hollywoodreporter.com/sites/default/files/imagecache/blog_post_349_width/2013/03/jon_stewart.jpg",
  )

User.create(
  first_name: "Bill",
  last_name: "Clinton",
  age: 34,
  gender: "male",
  orientation: "straight",
  looking_for: "women",
  prof_img: "http://www.librarising.com/astrology/celebs/images2/B/billclinton.jpg",
  )

User.create(
  first_name: "Susan",
  last_name: "Sarandon",
  age: 29,
  gender: "female",
  orientation: "straight",
  looking_for: "men",
  prof_img: "http://images6.fanpop.com/image/photos/32500000/Susan-Sarandon-susan-sarandon-32568088-2362-2813.jpg"
  )

User.create(
  first_name: "Amy",
  last_name: "Adams",
  age: 25,
  gender: "female",
  orientation: "straight",
  looking_for: "men",
  prof_img: "http://www.finanzas.com/archivos/201303/amy.jpg"
  )

User.create(
  first_name: "Jennifer",
  last_name: "Lawrence",
  age: 27,
  gender: "female",
  orientation: "straight",
  looking_for: "men",
  prof_img: "http://jenniferlawrencefoundation.com/wp-content/uploads/2013/10/Lesdoit-Jennifer-Lawrence-blonde-hair1.jpg"
  )





