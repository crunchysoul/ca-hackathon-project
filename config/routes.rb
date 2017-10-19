Rails.application.routes.draw do
  root 'listings#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :conversations
  resources :listings
  resources :profiles
  post 'messages' => 'messages#create'

  get '/followers' => 'followers#index'
  get '/following' => 'following#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
