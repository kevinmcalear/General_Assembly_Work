Hogwarts::Application.routes.draw do
 
root "house#index"
resources :houses
resources :students, only: [:index, :show]

end
