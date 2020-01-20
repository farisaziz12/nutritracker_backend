class UserSerializer < ActiveModel::Serializer
  attributes :name, :email, :age, :token, :weight, :age, :height
  has_many :meal_plans
end
