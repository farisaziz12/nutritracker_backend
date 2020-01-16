class UsersController < ApplicationController
  def create
    user = User.create(user_params)

    if user.valid?
      render json: {jwt: user.token}
    else
      render json: {errors: user.errors.full_messages}, status: :not_acceptable
    end 

  end

  def login
    user = User.find_by(email: user_params[:email])

    if user && user.authenticate(user_params[:password])
      render json: {jwt: user.token}
    else
      render json: {failure: "You done something wrong boy!"}
    end
  end

  def update
    
  end
  
  def destroy
    
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :weight, :height, :age)
  end
end
