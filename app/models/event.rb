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
      start: self.start.strftime("%d/%m/%Y"),
      start_time: self.start.strftime("%I:%M%p"),
      finish: self.finish.strftime("%d/%m/%Y"),
      finish_time: self.finish.strftime("%I:%M%p"),
      description: self.description,
      venue: self.venue.name,
      picture_url: self.venue.picture_url,
      address: self.venue.address,
      truck: self.truck.name,
      confirmed: self.confirmed,
      lat: self.venue.lat,
      lng: self.venue.lng
    }
  end

  def self.find_by_venue(name)
    venue = Venue.find_by(name: name)
    return self.where(venue: venue)
  end

end
