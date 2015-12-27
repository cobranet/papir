class CreateLanguages < ActiveRecord::Migration
  # Link : https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes
  # There is language we use in particular game.
  # It is game level... Interesting thing to make is 2 or 3 languages game..
  def change
    create_table :languages do |t|
      t.column :ISO6391, :string
      t.column :ISO6392, :string
      t.column :name, :string
      t.timestamps null: false
    end
  end
end
