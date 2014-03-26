TictactoeRails::Application.routes.draw do

  root to: "games#new"
  get '/games/history', to: "games#history"
  resources :games, only: [:create];
end
