Tunr::Application.routes.draw do

  resources :artists do
    resources :songs
  end

end
