class UpdateGames < ActiveRecord::Migration
  def change
  	change_table :games do |t|
	  	t.remove :won
	  	t.string :winner
  	end
  end
end
