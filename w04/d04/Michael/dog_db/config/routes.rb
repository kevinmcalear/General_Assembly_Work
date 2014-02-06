DogDb::Application.routes.draw do
  get "/dogs", to: "dogs#index"
end
