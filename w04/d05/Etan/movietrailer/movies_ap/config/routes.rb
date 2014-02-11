MoviesAp::Application.routes.draw do
 resources :movies do
    resources :actors
    resources :trailers
  end
end
