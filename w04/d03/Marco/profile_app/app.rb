require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get('/'){
  # "Hello #{params[:name].nil? ? 'World' : params[:name]}!"
  erb(:profile)
}

get('/name'){
  erb(:name)

}