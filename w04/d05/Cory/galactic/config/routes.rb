Galactic::Application.routes.draw do
resources :spaceships do
  resources :aliens
  end


# get "/spaceships", to: "spaceships#index"
# get "/spaceships/new", to: "spaceships#new"
# post "/spaceships", to: "spaceships#create"
# get "/spaceships/:id", to: "spaceships#show"

# get "/spacehsips/:id/new", to: "aliens#new"
# post "/spaceships/:id/aliens", to: "aliens#create"
end




