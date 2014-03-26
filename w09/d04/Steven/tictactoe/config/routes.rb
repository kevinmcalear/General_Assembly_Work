Tictactoe::Application.routes.draw do
  root to: 'games#new'

  resources :games, only: [:create]
  
end
