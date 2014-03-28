Watchio::Application.routes.draw do
  resources :movies, only: [:destroy, :index, :create, :update]
  root 'movies#index'
end
