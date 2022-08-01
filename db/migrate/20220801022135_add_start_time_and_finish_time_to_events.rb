class AddStartTimeAndFinishTimeToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :start_time, :datetime
    add_column :events, :finish_time, :datetime
  end
end
