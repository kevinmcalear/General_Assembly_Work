class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
    	t.string :name
    	t.text :photo_url
    	t.references :movie
    	t.references :trailer
    end
  end
end
