class AddRepeatDayToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :repeat, :string
  end
end
