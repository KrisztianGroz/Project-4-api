class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :location, :image, :fighter, :time, :winner, :user, :attendee_ids
  has_one :user
  has_many :attendees
end
