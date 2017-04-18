class Arena < ApplicationRecord
  belongs_to :user
  has_many :events
  has_many :robots, through: :events

end
