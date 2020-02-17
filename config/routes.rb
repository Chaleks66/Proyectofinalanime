Rails.application.routes.draw do
  resources :lists
  resources :series
  devise_for :users, controllers: {
    registrations: 'users/registrations', 
    sessions: 'users/sessions'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
