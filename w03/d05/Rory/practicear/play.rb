#
#require "active_record"
#
#ActiveRecord::Base.establish_connection(
  #:adapter => "postgresql",
  #:host => "localhost",
  #:username => "rorybudnick",
  #:password => "",
  #:database => "playground"
  #)
#
## Musicals
## -title
## -composer
## -lyricist
## -year
##1. change schema to reflect new attributes
##2. write a command line interface program that allows you to
##list, Read(indiv musicals), Update, Create, Delete
#
#class Musical < ActiveRecord::Base
#end
#
## oklahoma = Musical.create(title: "Oklahoma!")
#
## Musical.create(title: "Oklahoma!")
## Musical.create(title: "Oklahoma!")
#
#
##Set up menu
#system "clear"
#puts "Welcome to the Musicals Database"
#
#def menu
  #puts ""
  #puts "Enter a selection: "
  #puts "(I) Index - List all"
  #puts "(C) Add"
  #puts "(R) View all info for a specific musical"
  #puts "(U) Update a musical"
  #puts "(D) Remove a musical"
  #puts "(Q) Quit"
#end
#
#menu
#choice = gets.chomp.downcase
#
#
##choices loop
#while choice !="q"
 #case choice
 #when "i"
  #system "clear"
  #results = Musical.all
#
  #results.each { |row| puts "Musical Name: #{row["title"]} composer: #{row["composer"]} #Lyricist: #{row["lyricist"]} Year: #{row["year"]}" }
  #menu
  #choice=gets.chomp.downcase
#when "c"
  #system "clear"
  #puts "what up user. Tell me your title."
  #title = gets.chomp.downcase
  #puts "Now the person who made it."
  #composer = gets.chomp.downcase
  #puts "The song writer dude(et)."
  #lyricist = gets.chomp.downcase
  #puts "And finnally the year"
  #year = gets.chomp.to_i
#
  #Musical.create(title: "#{title}", composer: "#{composer}", lyricist: "#{lyricist}", year: #year )
  #menu
  #choice=gets.chomp.downcase
#when "r"
  #system "clear"
  #puts "What's the musical name?"
  #name = gets.chomp
  #thing = Musical.find_by(title: name)
  #puts "Musical Name: #{thing.title} composer: #{thing.composer} Lyricist: #{thing.lyricist} #Year: #{thing.year}"
  #menu
  #choice=gets.chomp.downcase
#when "u"
  #system "clear"
  #system "clear"
  #puts "Which musical do you want to update?"
  #name = gets.chomp
  #updated_musical = Musical.find_by(title: name)
  #puts "What do you want to call it now?"
  #new_name = gets.chomp
  #updated_musical.update(title: new_name)
  #menu
  #choice=gets.chomp.downcase
#when "d"
  #system "clear"
  #puts "Which musical do you want to delete?"
  #name = gets.chomp
  #deleted_musical = Musical.find_by(title: name)
  #deleted_musical.destroy
  #menu
  #choice=gets.chomp.downcase
#end
#end

require 'pry'
require "active_record"

ActiveRecord::Base.logger = Logger.new("./sql.log")

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "rorybudnick",
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
  has_many :songs
  self.validates(:title, { presence: true, uniqueness: true })
  self.validates(:composer, { presence: true })
  self.validates(:year, { presence: true })
  #Composer and year should be present
  #No 2 musicals should have the same title

  #self.before_validation(:i_am_called_before)
  #self.after_validation(:i_am_called_after)
#
  #def i_am_called_before
    #puts "BEFORE VALIDATION!!!"
  #end
#
  #def i_am_called_after
    #puts "AFTER VALIDATION!!!!"
  #end
end

class Song < ActiveRecord::Base
  belongs_to :musical
  has_many :performances
  has_many :characters, :through => performances
end

class Character < ActiveRecord::Base
  has_many :performances
  has_many :songs, :through => :performances
end

class Performance < ActiveRecord::Base
  belongs_to :song
  belongs_to :character
  
  self.validates(:song_id, { uniqueness: {:scope => :character_id} })
  #could use sugar:
  #self.validates(:song, { uniqueness: { :scope => :character, :message => "This character is already singing this song!"} })
  #Active Record finds the Character class
  #and uses it for association behaviors
end

binding.pry