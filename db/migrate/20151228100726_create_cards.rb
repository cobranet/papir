class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :letters
      t.integer :value
      t.integer :price
      t.text :bottom_text
      t.text :top_text
      t.string :color
      t.timestamps null: false
    end
  end
end
