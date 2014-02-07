class Wdinstagram < ActiveRecord::Migration
  def change
    create_table :wdinstagrams do |t|
      t.string :author
      t.string :photo_url
      t.datetime :date_taken
    end
  end
end
