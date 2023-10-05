class AddShortDescriptionToAbout < ActiveRecord::Migration[6.1]
  def change
    add_column :abouts, :short_description, :string
  end
end
