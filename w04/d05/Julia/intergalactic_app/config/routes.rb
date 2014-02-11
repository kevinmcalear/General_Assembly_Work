IntergalacticApp::Application.routes.draw do
 
 #there's an option you can pass to resources
 #if you don't want 
  resources :spaceships do 
    resources :aliens
  end

  get "/aliens", to:"aliens#all_aliens"
  post "/aliens", to:"aliens#all_aliens"
end
