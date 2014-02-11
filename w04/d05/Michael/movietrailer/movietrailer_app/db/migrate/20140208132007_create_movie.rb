class CreateMovie < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :year_released
      t.string :poster_url
      t.string :genre
      t.string :director
    end
  end
end
