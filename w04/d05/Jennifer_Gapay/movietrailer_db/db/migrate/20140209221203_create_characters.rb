class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.text :name
      t.string :photo_url
      t.references :movie
    end
  end
end
