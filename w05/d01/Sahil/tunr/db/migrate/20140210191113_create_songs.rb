class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :year
      t.references :artist
      t.timestamps
    end
  end
end
