Hangman::Application.routes.draw do
  root 'games#new'

  resources :games, only: [:create] do

  end

  resources :words, only: [] do
    collection do
      get "random"
    end
  end
end
