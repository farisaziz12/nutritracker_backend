class MealPlan < ApplicationRecord
  belongs_to :user
  has_many :meal_plan_joins
  has_many :meals, through: :meal_plan_joins
end
