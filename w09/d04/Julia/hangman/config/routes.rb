Hangman::Application.routes.draw do
  root "main#index"

  resources :words, only: [] do
    collection do
      get "random"
    end
  end
end
