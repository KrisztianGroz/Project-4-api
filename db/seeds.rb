# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[User, Robot, Event, Arena].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end


[{
  nickname: "IronMan",
photo: "http://regiando.com/wp-content/uploads/2014/08/iron-man.jpg",
firstname: "Robert",
email:"k@k",
lastname: "Downey",
password: "p",
password_confirmation: "p",
motto: "Make it happen",
skill: "Fix anything in a second",
victory: 2,
lose: 1
},{
  nickname: "Batman",
photo: "https://lc-www-live-s.legocdn.com/r/www/r/catalogs/-/media/catalogs/characters/dc/mugshots/mugshot%202016/76055_1to1_mf_mugshot_batman_01.png?l.r2=1858676167",
firstname: "Bat",
email:"b@b",
lastname: "man",
password: "p",
password_confirmation: "p",
motto: "Fear the Bat",
skill: "Deep voice",
victory: 101000,
lose: -5
}].each do |user|
  User.create!(user)
end

[{
  name: "The Destroyer",
  image: "https://s-media-cache-ak0.pinimg.com/originals/43/8a/38/438a384b8543eebc956d184efee409bf.jpg",
  skill: "Super sharp teeth",
  demo: "Never let you away if he catches you",
  improvement: "Bigger teeth",
  user_id: 1
},{
  name: "The Pusher",
  image: "https://s-media-cache-ak0.pinimg.com/736x/69/ae/e8/69aee80eb46784615459c3ab9ebaea7d.jpg",
  skill: "Killer Horns",
  demo: "Boost you to the hospital",
  improvement: "Bigger Horns",
  user_id: 2
}].each do |robot|
  Robot.create!(robot)
end

[{
  name: "The battle of the Titans ",
  date: Date.new(1998, 8, 4),
  location: "The Fire Doom",
  image: "http://toucharcade.com/wp-content/uploads/2014/12/screen1136x1136-141.jpeg",
  fighter: "The Destroyer",
  time: 15.99,
  winner: 1,
  user_id: 1
},{
  name: "The Fight of the Dark and the Light",
  date: Date.new(1998, 8, 4),
  location: "Edge of the Heaven",
  image: "http://www.siliconvalleywatcher.com//RobotWar-2.jpg",
  fighter: "The Destroyer and the Pusher",
  time: 31.42,
  winner: 2,
  user_id: 2
}].each do |event|
  Event.create!(event)
end

  [{
    name: "The Fire Doom",
    location: "London Tw7 4as",
    event: "The Big Doggy Fight",
    image: "http://tbivision.com/wp-content/uploads/2016/03/Robot-Wars-Arena.jpg",
    intro: "A nice big ring close to the center of the city",
    user_id: 1
  },{
    name: "The abbys",
    location: "Chicago",
    event: "The Fight of the Dark and the Light",
    image: "https://s-media-cache-ak0.pinimg.com/736x/73/86/79/738679d46a2e04d9b0e7457b4d507a48.jpg",
    intro: "The place where robots belong to",
    user_id: 2
  }].each do |arena|
    Arena.create!(arena)
  end
