Hangman::Application.routes.draw do

  root to: "game#index"

  # nested under words, go to the random path
  resources :words, only: [] do
    collection do
      get "random"
    end
  end
end
