class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :robots
  has_one :arena, through: :users
end
