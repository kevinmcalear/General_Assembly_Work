class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :author
      t.string :url
      t.date :date
    end
  end
end
