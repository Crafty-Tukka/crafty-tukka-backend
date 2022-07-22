class AddMobileToVenues < ActiveRecord::Migration[6.1]
  def change
    add_column :venues, :mobile, :string
  end
end
