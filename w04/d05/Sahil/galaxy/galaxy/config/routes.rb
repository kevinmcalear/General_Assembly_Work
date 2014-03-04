Galaxy::Application.routes.draw do
  #get "/spaceships", to: "spaceships#index"

  resources :spaceships do
    resources :aliens
  end

end
