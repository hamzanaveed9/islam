class CreateHeaderSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :header_settings do |t|
      t.string :logo_image
      t.string :logo_text
      t.string :tagline
      t.integer :logo_height, default: 100 # Set your default height
      t.integer :logo_width, default: 200  # Set your default width
      t.text :menu_order, default: "home\nGallery\nabout\nservices\nevent" # Set your default menu order
      t.text :menu_text, default: "Home\nGallery\nAbout\nServices\nEvent"   # Set your default menu text
      t.string :footer_description
      
      t.timestamps
    end
  end
end
