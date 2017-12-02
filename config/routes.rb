Rails.application.routes.draw do
  resources :parts
  resources :orders
  resources :devise_models
  resources :providers
  resources :manufacturers
  resources :families
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'dashboard#index'
end
