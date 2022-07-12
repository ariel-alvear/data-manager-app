Rails.application.routes.draw do
  resources :league_participants
  resources :race_participants
  devise_for :users
  resources :league_races
  resources :race_tracks
  resources :leagues
  resources :points_for_positions
  resources :score_systems

  root to: "leagues#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
