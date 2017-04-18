class ArenaSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :event, :image, :intro
  has_one :user
end
