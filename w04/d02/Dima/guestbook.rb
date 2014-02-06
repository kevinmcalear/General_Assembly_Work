require 'sinatra'
require 'sinatra/reloader'
require 'pry'

guest_book = {1 => "jeff", 2 => "PJ", 3 => "Peter"}

get '/guest_book' do
  guest_book.values.join(", ")
end

get "/guest_book/link" do
  '<a href="http://localhost:4567/guest_book/2"> pj </a>' 
end

get "/guest_book/:id" do
  id = params[:id].to_i
  entry = guest_book[id]
  if entry
    entry
  else
    "none found silly"
  end
end

post "/guest_book" do
  last_id = guest_book.keys.max #takes all keys and returns a hash
  #, thenm max returns max key as an integer
  guest_book[last_id + 1] = params[:name] # we asign key to value
end

#  curl -X POST -F name="Kristin" http://localhost:4567/guest_book
# code above is in bash