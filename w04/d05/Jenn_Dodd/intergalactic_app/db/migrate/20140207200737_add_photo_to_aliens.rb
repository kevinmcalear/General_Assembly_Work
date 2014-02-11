class AddPhotoToAliens < ActiveRecord::Migration
  def change
    change_table :aliens do |t|
    t.string :photo_url
    end
  end
end
