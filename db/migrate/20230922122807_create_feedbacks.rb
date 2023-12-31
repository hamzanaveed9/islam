class CreateFeedbacks < ActiveRecord::Migration[6.1]
  def change
    create_table :feedbacks do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.text :message
      t.belongs_to :service

      t.timestamps
    end
  end
end
