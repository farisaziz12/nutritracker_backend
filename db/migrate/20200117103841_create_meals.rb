class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.text :instructions
      t.string :img_url
      t.integer :meal_plan_id
      t.timestamps
    end
  end
end
