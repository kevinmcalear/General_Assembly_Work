SpaceshipApp::Application.routes.draw do
  resources :spaceships do
    # resources :aliens, except: [:new, :create]
    resources :aliens
  end

  # resources :aliens, only: [:new, :create]

  # options hash

end
