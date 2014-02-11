DogApp::Application.routes.draw do
 get "/dogs", to: "dogs#index" #dogs_controller.rb
 get "/dogs/new", to: "dogs#new"
 post"/dogs", to: "dogs#create"
 get "/dogs/:id", to: "dogs#show"
end