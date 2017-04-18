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
}].each do |user|
  User.create!(user)
end

[{
  name: "The Destroyer",
  image: "https://s-media-cache-ak0.pinimg.com/originals/43/8a/38/438a384b8543eebc956d184efee409bf.jpg",
  skill: "Super sharp teeth",
  demo: "Never let you away if he catch you",
  improvement: "Bigger teeth",
  user_id: 1
}].each do |robot|
  Robot.create!(robot)
end

[{
  name: "The battle of the Titans ",
  date: Date.new(1998, 8, 4),
  location: "The Fire Doom",
  image: "http://tbivision.com/wp-content/uploads/2016/03/Robot-Wars-Arena.jpg",
  fighter: "The Destroyer",
  time: 15.99,
  winner: 1,
  user_id: 1
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
  }].each do |arena|
    Arena.create!(arena)
  end
