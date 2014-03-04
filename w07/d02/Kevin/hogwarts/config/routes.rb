Hogwarts::Application.routes.draw do
 
root "welcome#index"
resources :houses
resources :students

end
