class RemoveStartAndFinishFromEvents < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :start, :string
    remove_column :events, :finish, :string
  end
end
