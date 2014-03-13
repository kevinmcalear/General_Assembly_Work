class AddWonToGames < ActiveRecord::Migration
  def change
    add_column :games, :won, :boolean
  end
end
