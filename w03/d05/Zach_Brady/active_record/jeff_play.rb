require 'pry'
require "active_record"

ActiveRecord::Base.logger = Logger.new("./sql.log")

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "zzzbra",
  :password => "",
  :database => "playground"
)

# Musicals
# - title
# - composer
# - lyricist
# - year

# CLI
# List, Read (Indiv. Musicals), Update, Create, Destroy

class Musical < ActiveRecord::Base
  self.has_many( :songs )
  self.validates( :title, { presence: true, uniqueness: true } )
  # Composer and year should be present
  # no two musicals should have the same title 
  self.validates( :year, { presence: true } )
  self.validates( :composer, {presence: true } )


  # self.before_validation( :i_am_called_before )
  # self.after_validation( :i_am_called_after )

  # def i_am_called_before
  #   puts "BEFORE VALIDATION!!!"
  # end

  # def i_am_called_after
  #   puts "AFTER VALIDATION!!!"
  # end

end

class Song < ActiveRecord::Base
  belongs_to :musical
  has_many :performances
  has_many :characters, :through => :performances
end

class Character < ActiveRecord::Base
  has_many :performances
  has_many :songs, :through => :performances 
end

class Performance < ActiveRecord::Base
  belongs_to :song
  self.belongs_to( :character )
  self.validates( :song_id, { uniqueness: { :scope => :character_id, :message => "This character is already singing this song! Diva. " } } )
  # Active Record finds the Character class and uses it for association behaviors
end

binding.pry

