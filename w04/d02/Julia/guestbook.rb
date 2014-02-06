require 'sinatra'
require 'sinatra/reloader'
require 'pry'

#View All Guests

guest_book = {1 => "Jeff", 2 => "PJ", 3 => "Peter"}

get "/guest_book" do

  guest_book.values.join(", ")

end

get "/guest_book/:id" do
  id = params[:id].to_i
  entry = guest_book[id]

  if entry 
    entry
  else
    "NONE FOUND, YOU GOOSE!"
  end

end

#create a new guest

post "/guest_book" do
  #give us an array with all the keys and give us the largest
  last_id = guest_book.keys.max
  guest_book[last_id + 1] = params[:name]

  #add this in terminal: curl -X POST -F name="Kristin" http://localhost:4567/guest_book

end
