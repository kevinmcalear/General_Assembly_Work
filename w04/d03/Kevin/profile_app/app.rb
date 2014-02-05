require 'sinatra'
require 'sinatra/reloader'
require 'pry'

# get ('/'){ "Hello #{params[:name].nil? ? 'world' : params[:name]}!" }

get ('/') { 

if params[:name].nil? 
  @name = 'Sweet Cheeks' 
else 
  @name = params[:name]
end

erb(:profile)
}
get ('/name') { 

if params[:name].nil? 
  @name = 'Sweet Cheeks' 
else 
  @name = params[:name]
end

erb(:name)
}