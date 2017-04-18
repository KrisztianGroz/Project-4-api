class UserSerializer < ActiveModel::Serializer
  attributes :id, :nickname, :photo, :firstname, :lastname, :motto, :skill, :victory, :lose, :email
end
