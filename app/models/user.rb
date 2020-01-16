class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  def token
    JWT.encode({user_id: self.id}, 'secret')
  end
end
