Tunr::Application.routes.draw do

  resources :artists do
    resources :songs
  end

  resources :users 

  get "/", to: "welcome#index"
  
end
