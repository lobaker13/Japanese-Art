Rails.application.routes.draw do
  resources :keywords
  resources :leases
  resources :arts
  resources :artists
  devise_for :users
  root 'home#index'
end

=begin
add in patches for lease conditions of a piece of art
```
patch 'arts/:id/upgrade' => 'arts#upgrade' (upgrade needs to be defined in arts controller)
```
add upgrade/whatever name into the before action in the controller to make it available
in index.erb for arts,
```
<% link_to arts__upgrade_path(art), method: :patch, remote: true,
```
Search implementation
get 'search' => 'misc#search', as: :search


=end
