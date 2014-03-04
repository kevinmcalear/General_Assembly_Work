MovieApp::Application.routes.draw do
  resources :movies do
    resources :characters
    resources :trailers
  end
  resources :buildings do
  end
end
