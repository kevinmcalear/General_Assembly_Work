MoviesApp::Application.routes.draw do
resources :movies do
  resources :trailers
end

resources :characters

end
