require 'pry'
require "active_record"

ActiveRecord::Base.logger = Logger.new("./sql.log")

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "kevinmcalear",
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
  validates :title, {presence: true, uniqueness: true}
  validates :composer, {presence: true}
  validates :year, {presence: true}


  before_validation :i_am_called_before
  after_validation :i_am_called_after

  # def i_am_called_before
  #   puts "BEFORE VALIDATION!!!"
  # end

  # def i_am_called_after
  #   puts "AFTER VALIDATION!!!"
  # end
end

class Song < ActiveRecord::Base
  belongs_to :musical
  has_many( :characters, through: :performances )
end

class Character < ActiveRecord::Base
  has_many :performances
  has_many :songs, through: :performances
end

class Performance < ActiveRecord::Base
  belongs_to :song
  belongs_to :character
  validates :year, {presence: true, uniqueness: true}
  validates :song_id, uniqueness: {scope: :character_id, message: "This character is already singing this song! Diva."}
end

binding.pry