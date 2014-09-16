class Member < ActiveRecord::Base
  enum status: %i(food human)
  has_many :contentships
  has_many :contents, through: :contentships
end