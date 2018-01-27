Rails.application.routes.draw do
  root to: "pages#home"

  get '/:locale', to: "pages#home"

  devise_for :users, only: :omniauth_callbacks, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}

  scope '/:locale', locale: /#{I18n.available_locales.join("|")}/, defaults: { locale: "de" } do
    devise_for :users, path_names: { sign_in: 'login' }, skip: :omniauth_callbacks

    get '/admin', to: 'pages#admin'

    resources :ads
    resources :posts
    resources :projects
    get '/about', to: 'pages#about'
    get '/contact', to: 'pages#contact'
    get '/exchange', to: 'pages#exchange'
    get '/expert-programmes', to: 'pages#expert'
    get '/volunteer', to: 'pages#volunteer'
    get '/education-trips', to: 'pages#trip'
    get '/faq', to: 'pages#faq'
  end

end
