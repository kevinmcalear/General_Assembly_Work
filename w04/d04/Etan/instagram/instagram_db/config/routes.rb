InstagramDb::Application.routes.draw do

  get "/instagrams", to: "instagrams#index"
  get "/instagrams/new", to: "instagrams#new"
  post "/instagrams/new", to: "instagrams#create"
  get "/instagrams/:id", to: "instagrams#show"

end

# For database reference
    # create_table :instagrams do |t|
    #   t.string :photographer
    #   t.string :url
    #   t.string :date_taken