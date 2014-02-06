require 'sinatra'
require 'sinatra/reloader'

# class GuestBook

#   def index
#   end

#   def show
#   end

#   def create
#   end

# end

#----------------------#

guest_book = {
  1 => "Jeff",
  2 => "PJ",
  3 => "Peter"
}

get '/guest_book' do
  guest_book.values.join(", ")
end

get '/guest_book/:id' do
  id = params[:id].to_i
  guest_book[id]
end

post '/guest_book' do

  last_id = guest_book.keys.max
  guest_book[last_id +1] = params[:name]

end
