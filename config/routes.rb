Rails.application.routes.draw do
  devise_for :users
  resources :friends
  resources :ruby_rails_tutorial_1s
  get 'home/about'
  #root 'home#index'

  root 'friends#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
