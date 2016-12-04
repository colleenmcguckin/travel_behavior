Rails.application.routes.draw do

  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'pages#index'
  resources :pages
end
