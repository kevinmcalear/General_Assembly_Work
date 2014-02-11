class CreateAliens < ActiveRecord::Migration
  def change
    create_table :aliens do |t|
      t.string :name
      t.string :species
      t.string :strength
      t.references :spaceship
    end
  end
end
