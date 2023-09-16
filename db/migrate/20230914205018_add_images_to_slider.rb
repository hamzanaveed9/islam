class AddImagesToSlider < ActiveRecord::Migration[6.1]
  def change
    add_column :sliders, :background_image, :string
    add_column :sliders, :logo, :string
  end
end
