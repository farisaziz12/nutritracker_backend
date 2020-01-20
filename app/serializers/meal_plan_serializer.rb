class MealPlanSerializer < ActiveModel::Serializer
  attributes :id, :name, :meals

  def meals
    ActiveModel::SerializableResource.new(object.meals, each_serializer: MealSerializer) 
  end
end
