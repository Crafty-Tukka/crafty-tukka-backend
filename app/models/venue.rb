class Venue < ApplicationRecord
    has_secure_password
    has_many :events
    has_many :trucks, through: :events
    validates :name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    has_one_attached :picture

    def get_picture_url
        url_for(self.picture)
    end
end
