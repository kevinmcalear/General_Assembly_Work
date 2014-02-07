class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string(:author)
      t.string(:photo_url)
      t.string(:date_taken)
    end
  end
end
