class AddLatAndLngToVenues < ActiveRecord::Migration[6.1]
  def change
    add_column :venues, :lat, :decimal
    add_column :venues, :lng, :decimal
  end
end
