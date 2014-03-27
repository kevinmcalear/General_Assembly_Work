class ChangeToString < ActiveRecord::Migration
  def change
    change_table :games do |t|
      t.remove :won
      t.string :won
    end
  end
end
