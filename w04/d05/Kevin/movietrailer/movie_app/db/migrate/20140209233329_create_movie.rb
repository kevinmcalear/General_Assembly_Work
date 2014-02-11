class CreateMovie < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name     
      t.integer :year
      t.string :poster_url
    end
  end
end
