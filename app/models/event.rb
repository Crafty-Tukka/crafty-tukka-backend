class Event < ApplicationRecord
  belongs_to :truck
  belongs_to :venue
  validates :name, presence: true
  validates :start, presence: true
  validates :finish, presence: true

end
