class RobotSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :skill, :demo, :improvement
  has_one :user
end
