Tictactoe::Application.routes.draw do
  
  root 'games#new'

  resources :games, only: [:create] do
    collection do
      get "stats"
    end
  end

end
