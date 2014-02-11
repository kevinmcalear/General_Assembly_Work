class AddMovieRefToTrailers < ActiveRecord::Migration
  def change
    add_reference :trailers, :movie, index: true
  end
end
