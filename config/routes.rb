Rails.application.routes.draw do
  resources :sightings
  resources :birds
  resources :locations
end