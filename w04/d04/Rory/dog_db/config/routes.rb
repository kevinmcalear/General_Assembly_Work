DogDb::Application.routes.draw do
  get "/dogs", to: "dogs#index"
  get "/dogs/new", to:"dogs#new"
  post "/dogs", to: "dogs#create"
  get "/dogs/:id", to: "dogs#show"
end
