Rails.application.routes.draw do
  root 'application#index'
  devise_for :users
  resources :investments, :researches
  get 'pages/help'
  get 'pages/about'
end
