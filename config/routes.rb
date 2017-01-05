Rails.application.routes.draw do

  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'pages#index'
  resources :pages
  resources :images, only: [:index]
  resources :documents, only: [:index, :show]
  get '/home', to: 'pages#home'
end
