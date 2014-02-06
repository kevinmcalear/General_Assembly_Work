require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get ('/') {erb:profile}