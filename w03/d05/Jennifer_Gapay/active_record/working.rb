class Musical < ActiveRecord::Base
  has_many :songs
end

class Song < ActiveRecord::Base
  has_many :songs
end

# Adding a new song on a songs collection, that belongs to a musical class.  
sound_of_music.songs.create(title: "Favorite Things")

#OR

sound_of_music.songs << do_re_mi

#print songs
sound_of_music.songs.each do |song|
    puts song.title
  end

#use psql to continue to make schemas
# Active record for everything else.