class UserSerializer < ActiveModel::Serializer
  attributes :id, :nickname, :photo, :firstname, :lastname, :motto, :skill, :victory, :lose, :email
  has_many :robots
  has_many :arenas
  has_many :events
  has_many :events_attending
end
