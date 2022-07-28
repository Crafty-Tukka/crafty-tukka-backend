class AddVenueToPositions < ActiveRecord::Migration[6.1]
  def change
    add_reference :positions, :venue, null: false, foreign_key: true
  end
end
