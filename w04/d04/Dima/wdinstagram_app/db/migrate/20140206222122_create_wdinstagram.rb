class CreateWdinstagram < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :author
      t.string :photo_url
      t.date :date_taken
    end
  end
end
