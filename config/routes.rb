Rails.application.routes.draw do
  get 'home/index'

  devise_for :users
  root 'home#index'

  resources :users do
    resources :userfiles
  end

  resources :admin
end
