Todo::Application.routes.draw do
  
  root to: "lists#index"
  get 'search' => 'lists#search'

  resources :lists

end
