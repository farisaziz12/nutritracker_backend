class FoodsController < ApplicationController
  require 'net/http'
  require 'json'


  def index
    
  end

  def show
  end



  def search
    food = params[:food]
    unless food
      response = 'Food not found'
      return render action: :index
    end
    request_uri = "https://api.edamam.com/api/food-database/parser?nutrition-type=logging&app_id=07d50733&app_key=80fcb49b500737827a9a23f7049653b9&ingr=#{food}"
    request_uri = URI(request_uri)
    api_response = Net::HTTP.get(request_uri)
    food_obj = JSON.parse(api_response)
    if food_obj["parsed"].empty?
      response = {error: "food not found"}
    else
      response =  food_obj["parsed"][0]["food"]["nutrients"]
    end
    render json: response, except: [:created_at, :updated_at]
  end


end
