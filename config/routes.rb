Rails.application.routes.draw do
  resources :meals
  resources :meal_plans
  get 'foods/index'
  get 'foods/show'
  get '/search' => 'foods#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :update, :destroy]
  post "/login", to: "users#login"
  get "/validate", to: "users#validate"
end
