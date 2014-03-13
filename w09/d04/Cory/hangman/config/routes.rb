Hangman::Application.routes.draw do

  root "welcome#index"

  resources :words, only: [] do
    collection do
      get "random"
    end
  end
end
