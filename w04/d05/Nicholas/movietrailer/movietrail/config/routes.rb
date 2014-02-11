Movietrail::Application.routes.draw do
  resources :movies do 
    resources :characters, :trailers
  end
end
