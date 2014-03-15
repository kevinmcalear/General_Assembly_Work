Todos::Application.routes.draw do
  root "notes#index"
  post "/notes" => "notes#create"
  put "/notes/:id" => "notes#update"
  get "/notes/info" => "notes#latest"
  delete "/notes/:id" => "notes#destroy"
end
