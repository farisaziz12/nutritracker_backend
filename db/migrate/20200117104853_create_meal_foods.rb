class CreateMealFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_foods do |t|
      t.integer :meal_id
      t.integer :food_id

      t.timestamps
    end
  end
end
