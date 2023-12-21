class AddDisplayOnHomepageToGallery < ActiveRecord::Migration[6.1]
  def change
    add_column :galleries, :display_on_homepage, :boolean, default: false
  end
end
