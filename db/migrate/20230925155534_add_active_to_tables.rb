class AddActiveToTables < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :active, :boolean, default: true
    add_column :services, :active, :boolean, default: true
    add_column :sliders, :active, :boolean, default: true
    add_column :events, :active, :boolean, default: true
    add_column :feedbacks, :active, :boolean, default: true
    add_column :galleries, :active, :boolean, default: true
  end
end
