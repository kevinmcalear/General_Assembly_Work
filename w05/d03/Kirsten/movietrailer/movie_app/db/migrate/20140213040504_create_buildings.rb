class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :address
      t.integer :year_built
      t.string :photo_url
      t.decimal :latitude
      t.decimal :longitude
    end
  end
end
