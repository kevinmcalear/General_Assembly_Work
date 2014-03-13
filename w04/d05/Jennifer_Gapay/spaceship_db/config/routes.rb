SpaceshipDb::Application.routes.draw do
  resources :spaceships do
    resources :aliens
      get "/spaceships", to: "spaceships#index"
      get "/spaceships/new", to: "spaceships#new"
      post "/spaceships", to: "spaceships#create"
      get "spaceships/:id", to: "spaceships#show"
  end
end
