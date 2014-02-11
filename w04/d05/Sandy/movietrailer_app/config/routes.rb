MovietrailerApp::Application.routes.draw do
  resources(:movies) do 
    resources(:characters, {except: [:new, :create]})
    resources(:trailer, {except: [:new, :create]})
end

  resources(:movies, {only: [:new, :create]})
end

