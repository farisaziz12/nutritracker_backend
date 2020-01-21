class MealPlansController < ApplicationController
  def index
    render @current_user.meal_plans 
  end

  def create
    meal_plan = MealPlan.create(meal_plan_params)
    meal_plan.update(user: @current_user)

    if meal_plan.valid?
      render json: meal_plan
    else
      render json: {errors: meal_plan.errors.full_messages}, status: :not_acceptable
    end

  end

  private

  def meal_plan_params
    params.require(:meal_plan).permit(:name)
  end
end
