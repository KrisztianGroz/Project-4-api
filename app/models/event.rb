class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :attendees, class_name: "User", join_table: "events_users"
  has_one :arena, through: :users
end
