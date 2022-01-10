Rails.application.routes.draw do
  get 'users/index'
  resources :projects
  devise_for :users, :path_prefix => 'd'
  resources :users, :only =>[:show]
  resources :bugs
  # get 'home/index'
  root 'home#index'

  match '/users',   to: 'users#index',   via: 'get'
  match '/users/:id', to: 'users#show', via: 'get'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
