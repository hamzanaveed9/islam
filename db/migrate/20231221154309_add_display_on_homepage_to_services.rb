class AddDisplayOnHomepageToServices < ActiveRecord::Migration[6.1]
  def change
    add_column :services, :display_on_homepage, :boolean, default: false
  end
end
