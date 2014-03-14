Tictactoe::Application.routes.draw do
  root "games#index"

  resources :games, only: [:create] do 
      collection do 
        get "xwinner"
        get "owinner"
        get "tie"
      end 
    end 

end
