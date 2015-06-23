Rails.application.routes.draw do
  get 'home/index'

  devise_for :users
  root 'home#index'

  resources :users do
    resources :userfiles
  end

  resources :admin
  match '/users/edit',:via => 'GET', :to => 'devise/admin#index'
end
