class AddDescriptionToTrucks < ActiveRecord::Migration[6.1]
  def change
    add_column :trucks, :description, :string
  end
end
