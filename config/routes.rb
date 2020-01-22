Rails.application.routes.draw do
  resources :meals, only: [:create, :destroy]
  resources :meal_plans, only: [:index, :create, :destroy]
  get '/search' => 'foods#search'
  resources :users, only: [:create, :update, :destroy]
  post "/login", to: "users#login"
  get "/validate", to: "users#validate"
end
