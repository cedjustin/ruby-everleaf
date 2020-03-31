Rails.application.routes.draw do
  resources :users
  root "sessions#new"
  resources :tasks
  resources :sessions
  resources :labels
  namespace :admin do
    resources :users
  end
end
