Todo::Application.routes.draw do
  root to: "tasks#index"

  post 'newtodo' => 'tasks#create'
  get 'new' => 'tasks#new'
end
