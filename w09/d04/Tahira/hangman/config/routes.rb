Hangman::Application.routes.draw do

  root to: 'games#index'

  resources :words, only: [] do
    collection do
      get 'random'
    end
  end
  
end
