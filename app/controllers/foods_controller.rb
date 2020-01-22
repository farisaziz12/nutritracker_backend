class FoodsController < ApplicationController
  require 'net/http'
  require 'json'

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

    return response = {error: "food not found"} if !food_obj 
    image = nil;

    food_obj["hints"].each do |e|
      if e["food"]["image"] && e["food"]["image"][-3..-1] == "jpg"
        image = e["food"]["image"]
        break
      end
    end

    if food_obj && food_obj["parsed"].empty?
      response = {error: "food not found"}
    else
      response =  food_obj["parsed"][0]["food"]["nutrients"].merge(image: image)
    end
    render json: response, except: [:created_at, :updated_at]
  end


end
