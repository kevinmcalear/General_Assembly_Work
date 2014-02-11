InstagramApp::Application.routes.draw do
  get "/instagram", to: "instagram#index"
  get "/instagram/new", to: "instagram#new"
  post "/instagram", to: "instagram#create"
  get "/instagram/:id", to: "instagram#show"
end
