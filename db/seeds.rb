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
  first_name: "Jenna",
  last_name: "Cowboy Hat",
  age: 30,
  gender: "female",
  orientation: "straight",
  looking_for: "men",
  prof_img: "http://scontent-a.cdninstagram.com/hphotos-xap1/t51.2885-15/10735179_294192850789688_998134096_n.jpg",
  apt_img: "http://kcbruski.files.wordpress.com/2010/05/p5130101.jpg"
  )
User.create(
  first_name: "Grace",
  last_name: "Hopper",
  age: 21,
  gender: "female",
  orientation: "straight",
  looking_for: "men",
  prof_img: "http://scontent-a.cdninstagram.com/hphotos-xpa1/t51.2885-15/1389046_226904904157963_262990159_n.jpg",
  apt_img: "http://scontent-b.cdninstagram.com/hphotos-xpa1/t51.2885-15/10755848_1538762289701109_1286852453_n.jpg"
  )

User.create(
  first_name: "Mary",
  last_name: "Brunette",
  age: 27,
  gender: "female",
  orientation: "straight",
  looking_for: "men",
  prof_img: "http://scontent-b.cdninstagram.com/hphotos-xaf1/t51.2885-15/10693722_1565372673674339_2045831455_n.jpg",
  apt_img: "http://www.elikarealestate.com/images/luxury-new-york-city-condo-apartments.jpg"
  )

User.create(
  first_name: "Carla",
  last_name: "Comet Sniffer",
  age: 32,
  gender: "female",
  orientation: "straight",
  looking_for: "men",
  prof_img: "http://scontent-a.cdninstagram.com/hphotos-xpa1/t51.2885-15/10808768_573317109480350_1771376325_n.jpg",
  apt_img: "http://www.silversuitesny.com/wp-content/uploads/2013/01/short-term-furnished-apartments-nyc-1000x445.jpg"
  )

User.create(
  first_name: "Sally",
  last_name: "Queen",
  age: 25,
  gender: "female",
  orientation: "straight",
  looking_for: "men",
  prof_img: "http://scontent-b.cdninstagram.com/hphotos-xap1/outbound-distilleryimage10/t0.0-17/OBPTH/3d87a84a6d8c11e3950e12f7291d6bbe_8.jpg",
  apt_img: "http://www.marvelbuilding.com/wp-content/uploads/2012/02/Unique-and-Comfortable-Chair-Inspirerd-by-Bunny.jpg"
  )

User.create(
  first_name: "Pat",
  last_name: "Tub",
  age: 37,
  gender: "female",
  orientation: "straight",
  looking_for: "men",
  prof_img: "http://scontent-a.cdninstagram.com/hphotos-xpa1/t51.2885-15/928738_1550741718473367_1866008922_n.jpg",
  apt_img: "http://whygo-amr.s3.amazonaws.com/www.newyorklogue.com/files/2007/12/apartment.jpg"
  )


User.create(
  first_name: "Kesha",
  last_name: "Singer",
  age: 27,
  gender: "female",
  orientation: "straight",
  looking_for: "men",
  email: "k@k.com",
  password: "111",
  prof_img: "http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/10784800_345340548960697_145543384_n.jpg",
  apt_img: "http://scontent-a.cdninstagram.com/hphotos-xaf1/t51.2885-15/10817619_339679602884401_450243426_n.jpg"
  )

User.create(
  first_name: "@hellothisiscass",
  last_name: "Squirrel",
  age: 24,
  gender: "female",
  orientation: "straight",
  looking_for: "men",
  prof_img: "http://scontent-b.cdninstagram.com/hphotos-xaf1/t51.2885-15/1169202_703829666370313_1813166321_n.jpg",
  apt_img: "http://photography.thetravelchica.com/USA/NYC/Around-Manhattan/i-PK5jrBN/0/L/NYC%20201211%20Apartment%20(2)-L.jpg"
  )

User.create(
  first_name: "Mac",
  last_name: "Black",
  age: 27,
  gender: "male",
  orientation: "straight",
  looking_for: "women",
  asset_id: 1,
  prof_img: "http://scontent-b.cdninstagram.com/hphotos-xfp1/t51.2885-15/10809037_878315522208576_1360102249_n.jpg",
  )

User.create(
  first_name: "Riff Raff",
  last_name: "Rapper",
  age: 32,
  gender: "male",
  orientation: "straight",
  looking_for: "women",
  asset_id: 1,
  prof_img: "http://scontent-a.cdninstagram.com/hphotos-xpa1/t51.2885-15/10809946_589132831214400_2094108160_n.jpg",
  )

User.create(
  first_name: "Bill",
  last_name: "Gates",
  age: 59,
  gender: "male",
  orientation: "straight",
  looking_for: "women",
  asset_id: 1,
  prof_img: "http://scontent-a.cdninstagram.com/hphotos-xaf1/t51.2885-15/10665928_315227598660119_456765677_n.jpg",
  )

User.create(
  first_name: "DHH",
  last_name: "Rails",
  age: 35,
  gender: "male",
  orientation: "straight",
  looking_for: "women",
  asset_id: 1,
  prof_img: "http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/10261066_231166847091548_1097064339_n.jpg",
  )


User.create(
  first_name: "Pitbull",
  last_name: "Latino",
  age: 33,
  gender: "male",
  orientation: "straight",
  looking_for: "women",
  asset_id: 1,
  email: "p@p.com",
  password: "111",
  asset_img: "http://wholles.com/wp-content/uploads/2013/04/Funny-Cat-Glasses1.jpg",
  prof_img: "http://scontent-b.cdninstagram.com/hphotos-xpa1/t51.2885-15/10808810_573784376100365_229509136_n.jpg",
  )

User.create(
  first_name: "Ralph",
  last_name: "Latino",
  age: 24,
  gender: "male",
  orientation: "straight",
  looking_for: "women",
  asset_id: 1,
  prof_img: "http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/1662694_250911801751161_121979762_n.jpg",
  )

Like.reset_matches




