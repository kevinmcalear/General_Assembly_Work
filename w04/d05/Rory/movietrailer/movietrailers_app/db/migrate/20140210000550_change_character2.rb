class ChangeCharacter2 < ActiveRecord::Migration
  def change
    change_table :characters do |t|
    t.remove :trailer_id
  end
end
end
