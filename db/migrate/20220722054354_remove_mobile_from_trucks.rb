class RemoveMobileFromTrucks < ActiveRecord::Migration[6.1]
  def change
    remove_column :trucks, :mobile, :integer
  end
end
