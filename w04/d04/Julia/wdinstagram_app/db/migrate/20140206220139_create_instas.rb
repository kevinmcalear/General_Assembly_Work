class CreateInstas < ActiveRecord::Migration
  def change
    create_table :instas do |t|
      t.string :author
      t.string :photo_url
      t.string :date_taken
    end
  end
end
