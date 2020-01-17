class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :user_id
      t.text :instructions
      t.string :img_url

      t.timestamps
    end
  end
end
