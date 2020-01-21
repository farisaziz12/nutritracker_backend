class FoodSerializer < ActiveModel::Serializer
  attributes :calories, :name, :category, :id, :fat, :protein, :carbohydrate
end
