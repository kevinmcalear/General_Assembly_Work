TrailerApp::Application.routes.draw do

   resources :movies do
        resources :characters
        resources :trailers
  end

end
