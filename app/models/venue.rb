class Venue < ApplicationRecord
    has_secure_password
    has_many :events
    has_many :trucks, through: :events
    validates :name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    has_one_attached :picture
    has_one_attached :picture
    has_one :address
    accepts_nested_attributes_for :address
end
