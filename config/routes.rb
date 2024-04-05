# frozen_string_literal: true

Rails.application.routes.draw do
  resources :genres
  resources :users
  get "signup" => "users#new"
  get "signin" => "sessions#new"
  root "games#index"
  resources :games do
    resources :reviews
    resources :favorites
  end
  get "games/filter/:filter" => "games#index", as: :filtered_games
  resource :session, only: [:new, :create, :destroy]
end
