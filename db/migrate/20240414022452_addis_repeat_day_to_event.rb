class AddisRepeatDayToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :is_repeat_day, :boolean, default: false
  end
end
