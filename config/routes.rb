Rails.application.routes.draw do
  resources :meals
  resources :meal_plans, only: [:index, :create]
  get 'foods/index'
  get 'foods/show'
  get '/search' => 'foods#search'
  resources :users, only: [:create, :update, :destroy]
  post "/login", to: "users#login"
  get "/validate", to: "users#validate"
end
