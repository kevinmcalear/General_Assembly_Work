class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.text :photo_url
      t.belongs_to :movie
    end
  end
end
