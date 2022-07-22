class AddMobileToTrucks < ActiveRecord::Migration[6.1]
  def change
    add_column :trucks, :mobile, :string
  end
end
