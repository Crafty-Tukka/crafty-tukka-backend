class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start
      t.datetime :end
      t.string :description
      t.references :truck, null: false, foreign_key: true
      t.references :venue, null: false, foreign_key: true
      t.boolean :confirmed_status

      t.timestamps
    end
  end
end
