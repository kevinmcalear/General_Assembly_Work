AliensApp::Application.routes.draw do

resources :spaceships do
  resources :aliens
end
end
