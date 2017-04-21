class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :location, :image, :fighter, :time, :winner, :user
  has_one :user
end
