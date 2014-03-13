Hangman::Application.routes.draw do
  root 'hangman#index'

  resources :words, only: [] do 
    collection do 
      get "random"
    end
  end
end
