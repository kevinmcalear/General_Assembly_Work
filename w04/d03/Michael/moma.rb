# require 'sinatra'
# require 'sinatra/reloader'
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "michaelwagner",
  :password => "",
  :database => "moma_db"
  )

class Artist < ActiveRecord::Base
  self.has_many(:paintings)
  self.validates(:name, {presence: true} )
  self.validates(:nationality, {presence: true} )
end

class Painting < ActiveRecord::Base
  self.belongs_to(:artist)
  self.validates(:title, {presence: true })
end 

binding.pry




