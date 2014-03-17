Todo::Application.routes.draw do

  root to: "tasks#index"

  get "/tasks/list", to: "tasks#list"

  resources :tasks, only: [:create, :destroy, :update]
  
end
