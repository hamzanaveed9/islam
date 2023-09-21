class CreateAbouts < ActiveRecord::Migration[6.1]
  def change
    create_table :abouts do |t|
      t.string :title
      t.text :description
      t.string :link_text
      t.string :link_address

      t.timestamps
    end
  end
end
