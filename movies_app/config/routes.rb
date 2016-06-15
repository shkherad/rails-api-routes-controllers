Rails.application.routes.draw do
  # get '/movies', to: 'movies#index'
  # get '/movies/:id', to: 'movies#show'
  # post '/movies', to: 'movies#create'
  # patch '/movies/:id', to: 'movies#update'
  # delete '/movies/:id', to: 'movies#destroy'

  resources :movies, only: [:index, :show, :create, :update]
  resources :actors



  # get '/actors', to: 'actors#index'
  # get '/actors/:id', to: 'actors#show'
end
