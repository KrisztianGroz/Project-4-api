class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :attendees, class_name: "Robot", join_table: "events_robots"
  has_one :arena, through: :users
end
