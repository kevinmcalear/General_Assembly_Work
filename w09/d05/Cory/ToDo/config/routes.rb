ToDo::Application.routes.draw do

  root "welcome#index"

  resources :welcome, only: [:create, :update, :destroy]

end
