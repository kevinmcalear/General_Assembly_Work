WdinstagramApp::Application.routes.draw do
  get "/grams", to: "grams#index"
  get "/grams/new", to: "grams#new"
  post "/grams", to: "grams#create"
  get "/grams/:id", to: "grams#show"
end
