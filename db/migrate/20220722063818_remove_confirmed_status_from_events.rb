class RemoveConfirmedStatusFromEvents < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :confirmed_status, :boolean
  end
end
