class CreateMealPlanJoins < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_plan_joins do |t|
      t.integer :meal_id
      t.integer :meal_plan_id

      t.timestamps
    end
  end
end
