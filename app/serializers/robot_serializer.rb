class RobotSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :skill, :demo, :improvement, :user
  has_one :user

  
end
