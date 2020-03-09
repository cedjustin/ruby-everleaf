Rails.application.routes.draw do
  resources :users
  root "sessions#new"
  resources :tasks
  resources :sessions
end
