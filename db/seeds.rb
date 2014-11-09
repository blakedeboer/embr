# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
  name: "Juan Pablo",
  email: "juan@gmail.com",
  age: 33,
  gender: "male",
  orientation: "straight",
  looking_for: "women",
  prof_img: "https://pbs.twimg.com/profile_images/3786193006/fd914ef5d5e4afd68ac0fcbf7c654e6e_400x400.jpeg"
  )

User.create(
  name: "Juan Pablo",
  email: "juan@gmail.com",
  age: 33,
  gender: "male",
  orientation: "straight",
  looking_for: "women",
  prof_img: "https://pbs.twimg.com/profile_images/3786193006/fd914ef5d5e4afd68ac0fcbf7c654e6e_400x400.jpeg"
  )

User.create(
  name: "Susan Swan",
  email: "susan@gmail.com",
  age: 29,
  gender: "female",
  orientation: "straight",
  looking_for: "men",
  prof_img: "http://storage.canoe.ca/v1/dynamic_resize/sws_path/suns-prod-images/1297417587052_ORIGINAL.jpg?quality=80&size=650x&stmp=1368746077861"
  )

Apartment.create(
  address: "123 Mi Amore Calle",
  room_type: "little spoon",
  apt_type: "1 br",
  price: 100,
  available_date: Date.today,
  hood_id: 1,
  user_id: 1
  )



