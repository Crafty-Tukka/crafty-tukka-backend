class RemoveGoogleMapFromTrucks < ActiveRecord::Migration[6.1]
  def change
    remove_column :trucks, :google_map, :string
  end
end
