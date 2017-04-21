class ArenaSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :event, :image, :intro, :user
  has_one :user
end
