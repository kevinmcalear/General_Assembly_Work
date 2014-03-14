Ttt::Application.routes.draw do
  root 'games#new'

  resources :games, only: [:create] do
    collection do
      get "all"
    end
  end
end
