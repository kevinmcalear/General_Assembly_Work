class WdinstagramDb < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :author
      t.text :photo_url
      t.date :date_taken
    end
  end
end