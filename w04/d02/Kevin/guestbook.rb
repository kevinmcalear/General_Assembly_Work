require 'sinatra'
require 'sinatra/reloader'
require 'pry'

guest_book = { 1 => "Jeff", 2 => "PJ", 3 => "Peter"}

get "/guest_book" do
  guest_book.values.join(", ")
end

get "/guest_book/:id" do
  if params[:id].to_i < guest_book.count
    guest_book[params[:id].to_i] 
  else
    "Doesn't exist man. Sorry!"
  end
end

post "/guest_book" do
 last_id = guest_book.keys.max 
 guest_book[ last_id + 1] = params[:name]
end