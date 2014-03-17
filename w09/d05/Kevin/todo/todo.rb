require 'sinatra'
require 'sinatra/activerecord'

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  database: "todo_dev",
  encoding: 'utf8'
)

class Note < ActiveRecord::Base
end

get '/' do
  erb :index
end

post '/new' do
  @new_item = Note.create(list_item: params[:item], complete: false)
end

get '/thelist.json' do
  @all_todos = Note.all
  content_type :json
  @all_todos.to_json
end

put '/update' do
  @item = Note.find(params[:id])
  @item.update(list_item: @item.list_item, complete: params[:complete])
end

delete '/delete' do
  @item = Note.find(params[:id])
  @item.destroy
end