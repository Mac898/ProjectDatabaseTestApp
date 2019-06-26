Rails.application.routes.draw do
  resources :projects
  root "home#index"
  
  resources :users
  resources :sessions
  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"
end
