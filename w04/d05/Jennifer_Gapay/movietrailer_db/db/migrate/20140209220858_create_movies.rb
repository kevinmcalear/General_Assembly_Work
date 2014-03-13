class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.text :title
      t.integer :year
      t.string :poster_url
    end
  end
end
