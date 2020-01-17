class MealSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :instructions, :img_url
end
