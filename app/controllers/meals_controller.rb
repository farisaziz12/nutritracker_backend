class MealsController < ApplicationController
  def create
    meal = Meal.create(name: params[:meal][:name], meal_plan_id: params[:meal][:meal_plan_id])

    params[:meal][:foods].each do |f|
      name = f[:name].downcase()
      food = Food.find_by(name: f[:name]) || Food.create(name: name,
                                                         fat: f[:fat], 
                                                         image: f[:image],
                                                         protein: f[:protein], 
                                                         carbohydrate: f[:carbohydrate], 
                                                         calories: f[:calories], 
                                                         category: "whatever")
      MealFood.create(meal: meal, food: food, quantity: f[:quantity])
    end

    render json: meal, scope: {meal_id: meal.id}
  end

end
