class CreateMealPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_plans do |t|
      t.string :name
      t.integer :user_id
      t.timestamps
    end
  end
end
