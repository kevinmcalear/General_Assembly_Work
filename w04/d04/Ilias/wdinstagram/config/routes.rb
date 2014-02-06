Wdinstagram::Application.routes.draw do
 get "/entries", to: "entries#index"
 get "/entries/new", to: "entries#create"
end
