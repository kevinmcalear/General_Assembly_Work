WdinstagramApp::Application.routes.draw do
  get "/entries", to: "entries#index"
  get "/entries/new", to: "entries#new"
  post "/entries", to: "entries#create"
  get "/entries/:id", to: "entries#show"
end
