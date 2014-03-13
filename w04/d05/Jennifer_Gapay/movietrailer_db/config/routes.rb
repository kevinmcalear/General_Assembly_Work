# MovietrailerDb::Application.routes.draw do
#   resources :movies do
#    resources :characters
#    resources :trailers
#   end
# end

 MovietrailerDb::Application.routes.draw do
  resources(:movies) do 
    resources(:characters, {except: [:new, :create]})
    resources(:trailers, {except: [:new, :create]})
end

  resources(:movies, {only: [:new, :create]})

# get '/movie/:id', to: 'movies#index', as: 'movie'
#     # get"/movies", to: "movies#index"
#     # get"/movies/:movie_id", to: "movies#index"

end