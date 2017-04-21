class Robot < ApplicationRecord
  belongs_to :user
  # has_and_belongs_to_many :events_attending, class_name: "Robot", join_table: "events_robots"
  has_many :arena, through: :events



  # has_and_belongs_to_many :events


end
