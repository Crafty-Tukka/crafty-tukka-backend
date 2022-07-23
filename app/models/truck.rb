class Truck < ApplicationRecord
    has_secure_password
    has_many :events
    has_many :venues, through: :events
    validates :name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    has_one_attached :picture
end