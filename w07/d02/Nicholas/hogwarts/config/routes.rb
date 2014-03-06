Hogwarts::Application.routes.draw do
 
root "houses#index"
resource :houses, only: [:index, :show]
resources :students, only: [:index, :show]

end
