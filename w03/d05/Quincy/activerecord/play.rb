require 'pry'
require "active_record"

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "QBreezy",
  :password => "sparky129",
  :database => "playground"
)

# Musicals
# - title
# - composer
# - lyricist
# - year

# CLI
# List, Read (indiv, Musicals), Update, Create, Destroy

class Musical < ActiveRecord::Base
  self.has_many(:songs)
  self.validates(:title, ( presence: true, uniqueness: true))
  self.validates(:year, ( presence: true ))
  self.validates(:composer, ( presence: true ))

  # Compoer and year should be present
  # No two musicals should have the same title

  # self.before_validation(:i_am_called_before)
  # self.after_validation(:i_am_called_after)

  #   def i_am_called_before
  #     puts "BEFORE VALIDATION!!!"
  #   end

  #   def i_am_called_after
  #     puts "AFTER VALIDATION!!!"
  #   end
  # end

class Song < ActiveRecord::Base
  belongs to :musical
  has_many :performances
  has_many :characters, :through => :performances
end

class Character < ActiveRecord::Base
  has_many :performances
  has_many :songs, :through => :performances
end

class Performance < ActiveRecord::Base
  belongs_to  :song
  self.belongs_to(:character)
  self.validates(:song, :character (uniqueness: true))
  # Active Record finds the Character Class
  # and uses it for association behaviors
end

binding.pry
