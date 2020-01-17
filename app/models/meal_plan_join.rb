class MealPlanJoin < ApplicationRecord
  belongs_to :meal_plan
  belongs_to :meal
end
