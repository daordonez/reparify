Rails.application.routes.draw do
  resources :invoices
  resources :items
  resources :customers
  resources :conmutadors
  resources :mintests
  resources :tests
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :manufacturers
  resources :orders
  resources :devise_models
  resources :providers
  resources :families

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'admin', to: 'admin/dashboard#index', as: 'admin'

  root 'conmutadors#index'
end
