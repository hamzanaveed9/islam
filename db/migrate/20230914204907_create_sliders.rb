class CreateSliders < ActiveRecord::Migration[6.1]
  def change
    create_table :sliders do |t|
      t.string :header
      t.string :title
      t.string :context
      t.text :description
      t.string :link_text
      t.string :link_address

      t.timestamps
    end
  end
end
