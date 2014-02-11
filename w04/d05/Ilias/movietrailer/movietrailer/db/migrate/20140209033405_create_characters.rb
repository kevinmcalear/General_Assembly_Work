class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :title
      t.text :embed_url
      t.integer :movie_id
    end
  end
end
