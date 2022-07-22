class CreateTrucks < ActiveRecord::Migration[6.1]
  def change
    create_table :trucks do |t|
      t.string :name
      t.string :email
      t.integer :mobile
      t.string :website
      t.string :facebook
      t.string :google_map
      t.string :password_digest
      t.string :category

      t.timestamps
    end
  end
end
