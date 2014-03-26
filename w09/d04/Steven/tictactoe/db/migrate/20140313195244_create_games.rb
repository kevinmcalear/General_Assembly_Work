class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.boolean :won
      t.string :winner

      t.timestamps
    end
  end
end
