Rails.application.routes.draw do
  get 'google/index'
  get '/callback', to: 'google#callback', as: 'callback'
  get 'events/fetch_events', to: 'events#fetch_events', as: 'fetch_events'
  devise_for :users
  resources :events
  root "events#index"
end
