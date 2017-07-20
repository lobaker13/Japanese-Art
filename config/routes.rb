Rails.application.routes.draw do
  resources :keywords
  resources :leases
  resources :arts
  resources :artists
  root 'home#index'
end
