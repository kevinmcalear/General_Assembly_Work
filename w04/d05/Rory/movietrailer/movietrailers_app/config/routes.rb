MovietrailersApp::Application.routes.draw do
  resources(:movies) do
    resources(:characters)
    resource(:trailers)
  end

  resources(:characters)

  resources(:trailers)
end
