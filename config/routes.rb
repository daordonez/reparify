Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :manufacturers
  resources :orders
  resources :devise_models
  resources :providers
  resources :families
  #Get de recurso desde otro controlador
  controller :dashboard do
  	get 'dashboard/show' => :list
  	get 'dashboard/delete' => :delete
  	get 'dashboard/edit' => :edit
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'admin/dashboard#index'
end
