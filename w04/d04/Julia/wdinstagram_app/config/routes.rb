WdinstagramApp::Application.routes.draw do

# * Index (Displays all entries)
  get "/instas", to: "instas#index"

# * New (Displays a form to create a new entry)
  get "/instas/new", to: "instas#new"

# * Create (Creates a new entry and saves it to the database)
  post "/instas", to: "instas#create"

# * Show (Displays one particular entry) 
  get "/instas/:id", to: "instas#show"

end
