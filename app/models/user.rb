class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  has_many :meal_plans
  has_many :meals, through: :meal_plans
  def token
    JWT.encode({user_id: self.id}, ENV["NUTRI"])
  end
end
