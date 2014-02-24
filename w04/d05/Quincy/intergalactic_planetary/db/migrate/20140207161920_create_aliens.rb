class CreateAliens < ActiveRecord::Migration
  def change
    create_table :aliens do |t|
      t.integer :num_appendages
      t.string :origin
      t.string :name
      t.text :organic_substrate
      t.text :weakness
      t.text :powers
      t.integer :spaceship_id
    end
  end
end
