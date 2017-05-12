Rails.application.routes.draw do

  resources :questions

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root to: 'news2s#index'



  resources :news2s do
    resources :newscomments
  end

  resources :buys do
    resources :buycomments
  end

  resources :sells do
    resources :sellcomments
  end

  resources :races do
    resources :racecomments
  end

  get 'pages/about'
  get 'pages/home'
  get 'pages/secretstuff'


end
