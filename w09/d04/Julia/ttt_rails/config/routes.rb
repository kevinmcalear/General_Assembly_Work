TttRails::Application.routes.draw do
  root "main#index"

  resources :games, only: [:create]

  resources :words, only: [] do
  	collection do
  		get "random"
  end
end
end