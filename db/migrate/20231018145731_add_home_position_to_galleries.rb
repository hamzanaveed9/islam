class AddHomePositionToGalleries < ActiveRecord::Migration[6.1]
  def change
    add_column :galleries, :home_position, :integer
  end
end
