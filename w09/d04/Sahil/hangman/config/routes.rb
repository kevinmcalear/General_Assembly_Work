Hangman::Application.routes.draw do

  root 'games#index'

  resources :words, only: [] do
    collection do
      get "random"
    end
  end
end
