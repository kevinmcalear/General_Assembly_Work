class CreateGrams < ActiveRecord::Migration
  def change
    create_table :grams do |t|
      t.string(:author)
      t.string(:photo_url)
      t.string(:date_taken)
    end
  end
end
