class FoodSerializer < ActiveModel::Serializer
  attributes :calories, :name, :category, :id
end
