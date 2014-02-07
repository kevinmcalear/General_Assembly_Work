class CreateAliens < ActiveRecord::Migration
  def change
    create_table :aliens do |t|
      t.integer :appendages
      t.string :origin
      t.string :name
      t.string :stuff
      t.string :weakness
      t.string :strength
      t.references :spaceship
    end
  end
end
