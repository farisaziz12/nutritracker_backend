class UsersController < ApplicationController

  def create
    user = User.create(user_params)

    if user.valid?
      render json: user
    else
      render json: {errors: user.errors.full_messages}, status: :not_acceptable
    end 

  end


  def login
    user = User.find_by(email: user_params[:email])

    if user && user.authenticate(user_params[:password])
      render json: user
    else
      render json: {message: "We couldn't find a user with that email and password!"}, status: :not_acceptable
    end
  end

  def validate
    if logged_in?
      render json: @current_user
    else
      render json: {message: "You done somethin wrong boy!"}, status: :not_acceptable
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
