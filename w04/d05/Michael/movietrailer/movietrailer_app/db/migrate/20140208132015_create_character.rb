class CreateCharacter < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :actor
      t.string :photo_url
      t.integer :gender
      t.references :movies
    end
  end
end
