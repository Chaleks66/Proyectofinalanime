Rails.application.routes.draw do
  resources :comments
  resources :serie_comments
  resources :series
  resources :lists
  devise_for :users, controllers: {
    registrations: 'users/registrations', 
    sessions: 'users/sessions'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
