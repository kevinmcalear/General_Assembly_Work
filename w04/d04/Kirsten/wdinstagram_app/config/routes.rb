WdinstagramApp::Application.routes.draw do
  get"/wdinstagram", to:"wdinstagrams#index"
  get"/wdinstagram/new", to:"wdinstagrams#new"
  post"/wdinstagram", to:"wdinstagrams#create"
  get"/wdinstagram/:id", to:"wdinstagrams#show"
end
