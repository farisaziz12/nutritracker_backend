class ApplicationController < ActionController::API
  def auth_header
    request.headers["Authorization"] || request.headers["Authorisation"]
  end

  def logged_in?
    !!@current_user
  end

  def require_login
    render json: {message: "You need to be logged in to see this page"} if !logged_in?
  end

end
