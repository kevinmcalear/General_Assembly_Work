class CreateGrams < ActiveRecord::Migration
  def change
    create_table :grams do |t|
      t.string :name
      t.string :image_address
      t.timestamps
    end
  end
end
