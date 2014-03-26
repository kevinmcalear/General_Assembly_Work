InfiniteGiphy::Application.routes.draw do
  
  root 'gifs#index'
  get 'search' => 'gifs#search' 


end
