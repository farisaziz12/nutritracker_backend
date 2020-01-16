class ApplicationController < ActionController::API
  def get_token
    request.headers["Authorization"] || request.headers["Authorisation"]
  end

  def issue_token(payload)
    JWT.encode(payload, ENV["NUTRI"])
  end

  def decode_token(token)
    JWT.decode(token, ENV["NUTRI"])[0]
  end

  def set_current_user
    token = get_token
    if token
      decoded_token = decode_token(token)
      @current_user = User.find(decoded_token["user_id"])
    else
      @current_user = nil
    end
  end

  def logged_in?
    !!@current_user
  end

  def require_login
    render json: {message: "You need to be logged in to see this page"} if !logged_in?
  end

end
