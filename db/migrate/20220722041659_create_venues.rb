class CreateVenues < ActiveRecord::Migration[6.1]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :email
      t.integer :mobile
      t.string :website
      t.string :facebook
      t.string :description
      t.string :google_maps
      t.string :password_digest

      t.timestamps
    end
  end
end
