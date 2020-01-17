class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  def token
    JWT.encode({user_id: self.id}, ENV["NUTRI"])
  end
end
