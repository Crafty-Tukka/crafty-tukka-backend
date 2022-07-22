class AddGoogleMapsToTrucks < ActiveRecord::Migration[6.1]
  def change
    add_column :trucks, :google_maps, :string
  end
end
