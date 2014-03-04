require "sinatra/activerecord/rake"
require "./app"

task :routes  do
  ["GET", "POST", "PUT", "DELETE"].each do |verb|
    routes = Sinatra::Application.routes[verb] || []
    routes.as_json.flatten.each do |params|
      puts params["route_name"] if params.is_a? Hash
    end
  end
end