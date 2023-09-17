class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :heading
      t.text :details
      t.string :scholar
      t.date :date
      t.string :event_type, array: true, default: []
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
