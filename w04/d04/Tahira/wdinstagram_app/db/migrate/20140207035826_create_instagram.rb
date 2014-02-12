class CreateInstagram < ActiveRecord::Migration
  def change
    create_table :instagrams do |t|
      t.string :author
      t.string :photo_url
      t.date :date_taken
      t.text :caption
    end
  end
end
