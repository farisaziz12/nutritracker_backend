class AddQuantityToMealFoods < ActiveRecord::Migration[6.0]
  def change
    add_column :meal_foods, :quantity, :integer
  end
end
