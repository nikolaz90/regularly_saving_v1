Rails.application.routes.draw do
  resources :years
  devise_for :users

  get 'dashboard/index'
  get 'home/index'
  get 'savings/overview'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: 'home#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
