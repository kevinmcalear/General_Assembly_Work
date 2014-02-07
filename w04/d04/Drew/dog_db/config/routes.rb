DogDb::Application.routes.draw do
    #calls index of dogs controller
  get "/dogs", to: "dogs#index" 
  get "/dogs/new", to: "dogs#new"
  post "/dogs", to: "dogs#create"
  get "/dogs/:id", to: "dogs#show"
end
