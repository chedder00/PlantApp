Rails.application.routes.draw do
  root 'plants#index'
  resources :plants
  resources :plant_monitors
  resources :notes
end
