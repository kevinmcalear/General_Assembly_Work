class AddCharacterReference < ActiveRecord::Migration
  def change
    change_table :characters do |t|
      t.references :movie
    end
  end
end
