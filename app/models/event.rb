class Event < ApplicationRecord
  belongs_to :truck
  belongs_to :venue
  validates :name, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :start_time, presence: true
  validates :finish_time, presence: true

  def render_event_details
    return {
      id: self.id,
      name: self.name,
      date: self.date.strftime("%d/%m/%Y"),
      start_time: self.start_time.strftime("%H:%M"),
      finish_time: self.finish_time.strftime("%H:%M"),
      description: self.description,
      venue: self.venue.name,
      picture_url: self.venue.picture_url,
      address: self.venue.address,
      truck: self.truck.name,
      truck_id: self.truck.id,
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
