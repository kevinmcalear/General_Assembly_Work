Hangman::Application.routes.draw do

  root to: "game#new"

  resources :game, only: [:create]

  # nested under words, go to the random path
  
  resources :words, only: [] do
    collection do
      get "random"
    end
  end
end
