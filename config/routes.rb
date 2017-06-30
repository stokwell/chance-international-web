Rails.application.routes.draw do
  devise_for :users, path_names: { sign_in: 'login' }


  root to: "pages#home"

  resources :posts
  resources :projects

  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/admin', to: 'pages#admin'
  get '/exchange', to: 'pages#exchange'
  get '/expert-programmes', to: 'pages#expert'
  get '/volunteer', to: 'pages#volunteer'
  get '/education-trips', to: 'pages#trip' 

 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
