class AddYoutubeUrlToSlider < ActiveRecord::Migration[6.1]
  def change
    add_column :sliders, :background_type, :string
    add_column :sliders, :background_video_url, :string
  end
end
