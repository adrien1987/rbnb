Rails.application.routes.draw do
  devise_for :users
  root to: 'categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "profiles", to: "profiles#show"
end
