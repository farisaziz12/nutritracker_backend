class UsersController < ApplicationController

  before_action :require_login, except: [:login, :create]

  def create
    user = User.create(user_params)

    if user.valid?
      render json: {jwt: user.token, user: UserSerializer.new(user)}
    else
      render json: {errors: user.errors.full_messages}, status: :not_acceptable
    end 

  end


  def login
    user = User.find_by(email: user_params[:email])

    if user && user.authenticate(user_params[:password])
      render json: {jwt: user.token, user: UserSerializer.new(user)}
      @current_user = user
    else
      render json: {failure: "Something went wrong..."}
      @current_user = nil
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
