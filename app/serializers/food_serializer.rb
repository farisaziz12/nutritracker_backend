class FoodSerializer < ActiveModel::Serializer
  attributes :calories, :name, :category
end
