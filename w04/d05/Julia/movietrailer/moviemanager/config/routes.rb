Moviemanager::Application.routes.draw do
  resources :movies do
    resources :trailers, :characters
  end
end
