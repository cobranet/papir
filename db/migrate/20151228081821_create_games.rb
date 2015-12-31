class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer  :language
      t.text  :state
      t.timestamps null: false
    end
  end
end
