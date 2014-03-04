class AddMovieRefToCharacters < ActiveRecord::Migration
  def change
    add_reference :characters, :movie, index: true
  end
end
