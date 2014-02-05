require 'sinatra'
require 'sinatra/reloader'
require 'pry'
guest_book = { 1 => "Jeff", 2 => "PJ", 3 => "Peter"}

get "/guest_book" do 
  guest_book.values.join(", ")
end

get "/guest_book/:id" do
  id = params[:id].to_i
  entry = guest_book[id]
  if entry
    entry
  else
    "None Found, Silly!"
  end
end

post "/guest_book" do
  last_id = guest_book.keys.max
  guest_book[last_id + 1] = params[:name]
end

#curl -X POST -F name=“Kristen” http://localhost:4567/guest_book