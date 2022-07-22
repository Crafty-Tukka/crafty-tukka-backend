class AddConfirmedToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :confirmed, :boolean
  end
end
