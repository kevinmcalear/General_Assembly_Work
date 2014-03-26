Tictactoe::Application.routes.draw do

  root "games#index"
  resources :games, only: [:create]

end
