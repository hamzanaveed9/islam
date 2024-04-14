class AddFrontImageToService < ActiveRecord::Migration[6.1]
  def change
    add_column :services, :front_image, :string
  end
end
