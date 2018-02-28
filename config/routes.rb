Rails.application.routes.draw do

  resources :meetings, only: [:show, :edit, :update]

  resources :teachers, only: [:index, :show, :new, :create, :edit, :update] do
    resources :meetings, only: [:create]
  end
  get "categories/:category_id/teachers", to: "teachers#index", as: :category_teachers

  devise_for :users do
    resources :meetings, only: [:create]
  end
  root to: 'categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "profiles", to: "profiles#show"

end
