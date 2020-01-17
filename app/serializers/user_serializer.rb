class UserSerializer < ActiveModel::Serializer
  attributes :name, :email, :age, :token
end
