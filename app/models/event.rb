class Event < ApplicationRecord
  belongs_to :truck
  belongs_to :venue
  validates :name, presence: true
  validates :start, presence: true
  validates :finish, presence: true

  def render_event_details
    return {
      id: self.id,
      name: self.name,
      start: self.start,
      finish: self.finish,
      description: self.description,
      venue: self.venue.name,
      address: self.venue.address,
      truck: self.truck.name,
      confirmed: self.confirmed
    }
  end

  def self.find_by_venue(name)
    venue = Venue.find_by(name: name)
    return self.where(venue: venue)
  end

end
