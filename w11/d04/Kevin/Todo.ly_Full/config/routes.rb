Listly2::Application.routes.draw do
  resources :todos, only: [:destroy, :show, :index, :create, :update]
  root 'todos#index'
end
