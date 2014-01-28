class Year 
  def year(year)
    return year
  end
end

class Category 
  def initialize(best_album, best_song, best_record)
    @best_album = best_album 
    @best_song = best_song
    @best_record = best_record
  end

  def best_album
    @best_album
  end

  def best_song
    @best_song 
  end

  def best_record
    @best_record
  end
end

class Winner
  def initialize(album_winner, song_winner, record_winner)
    @album_winner = album_winner
    @song_winner = song_winner
    @record_winner = record_winner
  end

  def album_winner
    @album_winner
  end

  def song_winner
    @song_winner
  end

  def record_winner
    @record_winner
  end
end
