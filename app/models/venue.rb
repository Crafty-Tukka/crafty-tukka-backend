class Venue < ApplicationRecord
    has_secure_password
    has_many :events
    has_many :trucks, through: :events
    validates :name, presence: true, uniqueness: true, length: { minimum: 5 }
    validates :email, presence: true, uniqueness: true
    validates :description, presence: true, uniqueness: true, length: { minimum: 20 }
    validates :mobile, presence: true, uniqueness: true
    validates_numericality_of :mobile
    validates :address, presence: true, uniqueness: true
    has_one_attached :picture

    ## Helper method to access picture url from AWS
    def picture_url
        Rails.application.routes.url_helpers.url_for(picture) if picture.attached?
    end
end
