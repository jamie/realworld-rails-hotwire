# frozen_string_literal: true

Rails.application.routes.draw do
  resources :articles
  resources :comments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "register", to: "users#new", as: "register"
  get "login", to: "sessions#new", as: "login"

  # Almost every application defines a route for the root path ("/") at the top of this file.
  root "articles#index"
end
