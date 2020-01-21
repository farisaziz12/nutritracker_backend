class MealSerializer < ActiveModel::Serializer
  attributes :id, :name, :instructions, :img_url, :foods, :meal_foods, :meal_plan_id

  def foods
    ActiveModel::SerializableResource.new(object.foods, each_serializer: FoodSerializer)
  end

  def meal_foods
    ActiveModel::SerializableResource.new(object.meal_foods, each_serializer: MealFoodSerializer) 
  end
end
