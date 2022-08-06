class Event < ApplicationRecord
  belongs_to :truck
  belongs_to :venue
  validate  :time_is_valid
  validates :name, presence: true
  validates :description, presence: true
  validates :date, presence: true

## This model method is used to send required information to the client in an easy to render format
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
      lng: self.venue.lng,
      venue_id: self.venue.id
    }
  end

  # This method is called when returning events created by a particular venue
  def self.find_by_venue(name)
    venue = Venue.find_by(name: name)
    return self.where(venue: venue)
  end

  private
## This method is used to validate if a time entered in the client is valid
  def time_is_valid
    if start_time.blank?
      errors.add(:start_time, 'cannot be blank')
    elsif  finish_time.blank?
      errors.add(:finish_time, 'cannot be blank')
    elsif finish_time < start_time
      errors.add(:finish_time, 'cannot be before the start time')
    end
  end

end
