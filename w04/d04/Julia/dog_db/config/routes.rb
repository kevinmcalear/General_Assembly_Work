DogDb::Application.routes.draw do
  #this matches get and the path to this controller action
  #this controller action – dogs#index is in the controllers
  get "/dogs", to: "dogs#index"
  get "/dogs/new", to: "dogs#new"
  post "/dogs", to: "dogs#create"
  get "/dogs/:id", to: "dogs#show" 
end
