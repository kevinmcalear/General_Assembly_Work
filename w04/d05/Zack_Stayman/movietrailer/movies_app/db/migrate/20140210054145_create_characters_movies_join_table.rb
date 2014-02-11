class CreateCharactersMoviesJoinTable < ActiveRecord::Migration
  def change
    create_table :characters_movies, id: false do |t|
      t.references :movie
      t.references :character
    end
  end
end
