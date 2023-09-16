class AddImagesToSlider < ActiveRecord::Migration[7.0]
  def change
    add_column :sliders, :background_image, :string
    add_column :sliders, :logo, :string
  end
end
