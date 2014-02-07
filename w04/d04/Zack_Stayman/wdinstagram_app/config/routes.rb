WdinstagramApp::Application.routes.draw do
 get"/photos", to: "photos#index"
 get"/photos/new", to: "photos#new"
 get"/photos/:id", to: "photos#show"
 post"/photos", to: "photos#create"
end
