Rails.application.routes.draw do

  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'pages#index'
  resources :pages
  resources :images, only: [:index]
  resources :documents, only: [:index, :show]
  get '/home', to: 'pages#home'
  get '/consultant-services', to: 'pages#consultant_services'
  get '/about', to: 'pages#about'
  get '/projects', to: 'pages#projects'
  get '/publications', to: 'pages#publications'
  get '/topic_briefs', to: 'pages#topic_briefs'
  post '/deliver_contact_form', to: 'contact_form#deliver'

end
