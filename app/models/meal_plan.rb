class MealPlan < ApplicationRecord
  belongs_to :user

  def meals
    Meal.where(meal_plan_id: self.id)
  end
end
