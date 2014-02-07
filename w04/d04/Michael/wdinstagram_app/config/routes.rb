WdinstagramApp::Application.routes.draw do
  get "/entries", to: "entries#index"
  get "/entries/post", to: "entries#post"
  get "/entries/:id", to: "entries#show"
  post "/entries", to: "entries#create"
  delete "/entries/:id", to: "entries#delete"
end


##NOTE:  Follow up about Delete. Not working. 