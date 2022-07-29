class RemoveLatAndLngFromVenues < ActiveRecord::Migration[6.1]
  def change
    remove_column :venues, :lat, :decimal
    remove_column :venues, :lng, :decimal
  end
end
