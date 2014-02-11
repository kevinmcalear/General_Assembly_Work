MovieTrailerApp::Application.routes.draw do

resources :movies do
  resources :trailers
  resources :characters
end

end
