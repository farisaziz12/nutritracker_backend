Rails.application.routes.draw do
  get 'foods/index'
  get 'foods/show'
  get '/search' => 'foods#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
