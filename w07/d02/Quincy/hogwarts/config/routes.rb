Hogwarts::Application.routes.draw do

root "houses#index"
resources :houses
resources :students
end
