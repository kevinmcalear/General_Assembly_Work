Todos::Application.routes.draw do
 
root "todos#index"

get "/id", to: "todos#id", as: "id" 

resources :todos, only: [:index, :create, :update, :destroy] do
end

end
