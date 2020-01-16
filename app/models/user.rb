class User < ApplicationRecord
  has_secure_password

  def token
    JWT.encode({user_id: self.id}, 'secret')
  end
end
