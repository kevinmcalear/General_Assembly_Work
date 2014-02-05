require 'sinatra'
require 'sinatra/reloader'
require 'pry'

guest_book = { 1=> "Jeff", 2=>"PJ", 3=>"Peter" }

get "/guest_book" do
  guest_book.values.join(", ")
end

get "/guest_book/:id" do
  id = params[:id].to_i
  entry = guest_book[id]
  if entry
    entry
  else
    "None found silly"
  end
end

post "/guest_book" do
  last_id = guest_book.keys.max
  #largest number is here, which is 3 before we add kristin
  guest_book[last_id + 1] = params[:name]
  #3+1 is 4.  something with the key of 4 should be assigned the value of name.
  #just storing new name in memory
end