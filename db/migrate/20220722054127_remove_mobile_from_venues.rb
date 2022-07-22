class RemoveMobileFromVenues < ActiveRecord::Migration[6.1]
  def change
    remove_column :venues, :mobile, :integer
  end
end
