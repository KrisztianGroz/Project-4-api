class User < ApplicationRecord
  has_secure_password
  has_many :robots
  has_many :events
  has_many :arenas
end
