class Notification < ActiveRecord::Base
  has_many :contentships
  has_many :contents, through: :contentships
end
