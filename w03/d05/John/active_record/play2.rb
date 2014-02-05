require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "johnhinrichs",
  :password => "",
  :database => "playground"
  )

# Musicals
# - title
# - composer
# - lyricist
# - year

class Musical < ActiveRecord::Base
  has_many :songs
  self.validates(:title, {presence: true, uniqueness: true} )
  # self.validates(:composer, {presence: true})
  # self.validates(:year, {presence: true})

  # self.before_validation(:i_am_called_before)
  # self.after_validation(:i_am_called_after)

  # def i_am_called_before
  #   puts "Before validation!"
  # end

  # def i_am_called_after
  #   puts "After validation!"
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
  belongs_to :character
  validates(:song, {:uniqueness => {:scope => :character, :message => "Custom error message"}})
  # validates(:song_id, {:uniqueness => {:scope => :character_id}})
end


binding.pry