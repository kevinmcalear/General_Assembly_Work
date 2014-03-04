Hogwarts::Application.routes.draw do
 
resources :houses, only: [:index, :show]
resources :students, only: [:index, :show, :new, :create]

root "houses#index"

end
