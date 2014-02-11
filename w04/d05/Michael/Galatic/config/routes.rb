Galatic::Application.routes.draw do
  resources :spaceships do  
    resources :aliens
  end 
  
  # get "/spaceships", to: "spaceships#index"
  # get "/spaceships/:id", to: "spaceships#show"
  # get "/spaceships/:id/aliens/:id", to: "aliens#show"

end
