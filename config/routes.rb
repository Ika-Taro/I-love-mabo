Rails.application.routes.draw do
  get 'items/index'
  get 'items/new'
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  root 'items#new'  
  resources :users, only: :new  
  resources :items
end
