class ChangeAliens < ActiveRecord::Migration
  def change
    change_table :aliens do |t|
      t.rename :spaceships_id, :spaceship_id
    end
  end
end
