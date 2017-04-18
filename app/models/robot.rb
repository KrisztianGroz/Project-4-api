class Robot < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :events
  has_many :arena, through: :events


end
