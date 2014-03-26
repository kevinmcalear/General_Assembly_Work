ToDoList::Application.routes.draw do
  root to: 'tasks#index'

  get "/tasks/show", to: 'tasks#show'

  resources :tasks

end
