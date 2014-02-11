class CreateAliens < ActiveRecord::Migration
  def change
    create_table :aliens do |t|
      t.string :name
      t.integer :appendage
      t.string :weakness
      t.string :strength
      t.string :origin
      t.references :spaceship
      t.timestamps
    end
  end
end