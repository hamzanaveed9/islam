class AddImagesToSlider < ActiveRecord::Migration[7.0]
  def change
    add_column :sliders, :background_image, :attachment
    add_column :sliders, :logo, :attachment
  end
end
