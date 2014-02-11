require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "julia",
  :password => "",
  :database => "fridge_db"
  )

class Fridge < ActiveRecord::Base
  has_many(:foods, {dependent: :destroy})
  has_many(:drinks, {dependent: :destroy})
end

class Food < ActiveRecord::Base
  belongs_to :fridge
end

class Drink < ActiveRecord::Base
  belongs_to :fridge
end
