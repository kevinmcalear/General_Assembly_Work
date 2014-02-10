class CreateCharacter < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.text :photo_url
      t.references :movie
    end
  end
end
