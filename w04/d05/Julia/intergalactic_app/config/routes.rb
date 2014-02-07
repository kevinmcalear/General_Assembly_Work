IntergalacticApp::Application.routes.draw do
 
  resources :spaceships do 
    resources :aliens
  end

  get "/aliens", to:"aliens#all_aliens"
  post "/aliens", to:"aliens#all_aliens"
end
