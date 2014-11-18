# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require_relative '../lib/assets/scraper'

# for i in 1..8
  Scraper.new.create_apartments(1)
# end

User.create(
  first_name: "Juan",
  last_name: "Pablo",
  age: 33,
  gender: "male",
  orientation: "straight",
  looking_for: "women",
  prof_img: "https://pbs.twimg.com/profile_images/3786193006/fd914ef5d5e4afd68ac0fcbf7c654e6e_400x400.jpeg",
  apt_img: "http://enpundit.s3.amazonaws.com/wp-content/uploads/2012/09/new-york-apartment-1.jpeg"
  )

User.create(
  first_name: "Jon",
  last_name: "Stewart",
  age: 30,
  gender: "male",
  orientation: "straight",
  looking_for: "women",
  prof_img: "http://www.hollywoodreporter.com/sites/default/files/imagecache/blog_post_349_width/2013/03/jon_stewart.jpg",
  apt_img: "http://kcbruski.files.wordpress.com/2010/05/p5130101.jpg"
  )

User.create(
  first_name: "Bill",
  last_name: "Clinton",
  age: 34,
  gender: "male",
  orientation: "straight",
  looking_for: "women",
  prof_img: "http://www.librarising.com/astrology/celebs/images2/B/billclinton.jpg",
  apt_img: "http://www.elikarealestate.com/images/luxury-new-york-city-condo-apartments.jpg"
  )

User.create(
  first_name: "Burt",
  last_name: "Reynolds",
  age: 45,
  gender: "male",
  orientation: "straight",
  looking_for: "women",
  prof_img: "https://atomicgator.files.wordpress.com/2011/07/burtreynolds-smokeybandit.jpg",
  apt_img: "http://www.silversuitesny.com/wp-content/uploads/2013/01/short-term-furnished-apartments-nyc-1000x445.jpg"
  )

User.create(
  first_name: "Mickey",
  last_name: "Avalon",
  age: 23,
  gender: "male",
  orientation: "straight",
  looking_for: "women",
  prof_img: "http://highlineballroom.com/assets/Mickey-Avalon-1-652x367-538x301.jpg",
  attribute_img: "http://www.marvelbuilding.com/wp-content/uploads/2012/02/Unique-and-Comfortable-Chair-Inspirerd-by-Bunny.jpg"
  )

User.create(
  first_name: "Susan",
  last_name: "Sarandon",
  age: 29,
  gender: "female",
  orientation: "straight",
  looking_for: "men",
  prof_img: "http://content8.flixster.com/rtactor/40/45/40458_pro.jpg",
  attribute_img: "http://whygo-amr.s3.amazonaws.com/www.newyorklogue.com/files/2007/12/apartment.jpg"
  )

User.create(
  first_name: "Amy",
  last_name: "Adams",
  age: 25,
  gender: "female",
  orientation: "straight",
  looking_for: "men",
  prof_img: "http://www.finanzas.com/archivos/201303/amy.jpg",
  apt_img: "http://photography.thetravelchica.com/USA/NYC/Around-Manhattan/i-PK5jrBN/0/L/NYC%20201211%20Apartment%20(2)-L.jpg"
  )

User.create(
  first_name: "Jennifer",
  last_name: "Lawrence",
  age: 27,
  gender: "female",
  orientation: "straight",
  looking_for: "men",
  prof_img: "http://jenniferlawrencefoundation.com/wp-content/uploads/2013/10/Lesdoit-Jennifer-Lawrence-blonde-hair1.jpg",
  apt_img: "http://www.homeadore.com/wp-content/uploads/2013/04/008-nyc-apartment-eisner-design.jpg"
  )





