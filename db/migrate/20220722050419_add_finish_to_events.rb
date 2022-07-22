class AddFinishToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :finish, :datetime
  end
end
