Hangman::Application.routes.draw do

  root "games#index"

  resources :games, only: [:create]

  resources :words, only: [] do
    collection do
      get "random"
    end
  end
end
