WdinstagramApp::Application.routes.draw do
  get "/wdinstagrams", to: 'wdinstagrams#index'
  get "/wdinstagrams/new", to: 'wdinstagrams#new'
  post "/wdinstagrams", to: "wdinstagrams#create"

end
