Tictactoe::Application.routes.draw do
  root 'games#new'

  resources :games, only: [:index, :create]
end
