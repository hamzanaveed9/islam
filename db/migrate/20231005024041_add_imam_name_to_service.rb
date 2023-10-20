class AddImamNameToService < ActiveRecord::Migration[6.1]
  def change
    add_column :feedbacks, :imam_name, :string
  end
end
