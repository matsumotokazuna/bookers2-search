Rails.application.routes.draw do
  root :to => 'home#top'
  get '/home/about' => 'home#about'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  get 'search' => 'search#search'
end