Rails.application.routes.draw do
  resources :keywords
  resources :leases
  resources :arts
  resources :artists
  devise_for :users
  root 'home#index'
end
