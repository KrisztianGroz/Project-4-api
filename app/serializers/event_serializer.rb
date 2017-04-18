class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :location, :image, :fighter, :time, :winner
  has_one :user
end
