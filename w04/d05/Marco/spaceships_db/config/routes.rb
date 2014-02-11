SpaceshipsDb::Application.routes.draw do

  resources :spaceships do
    resources :aliens, except: [:new, :create]
  end

  resources :aliens, only: [:new, :create]
  
end
