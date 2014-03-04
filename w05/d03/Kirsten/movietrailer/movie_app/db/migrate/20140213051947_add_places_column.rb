class AddPlacesColumn < ActiveRecord::Migration
  def change 
    change_table(:buildings) do |t|
      t.text :places
    end
  end
end
