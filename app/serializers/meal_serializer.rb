class MealSerializer < ActiveModel::Serializer
  attributes :id, :name, :instructions, :img_url, :foods

  def foods
    ActiveModel::SerializableResource.new(object.foods, each_serializer: FoodSerializer)
  end
end
