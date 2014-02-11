MovieApp::Application.routes.draw do
  resources(:movies) do
    resources(:characters, { except: [:new, :create] })
  end

  #resources(:characters {only: [:new, :create] })

end

  # resources(:movies) do
  #   resources(:trailers, {except: [:new, :create]})
  # end

  # resources(:trailers {only: [:new, :create]})
