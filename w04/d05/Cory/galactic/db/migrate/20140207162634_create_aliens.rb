class CreateAliens < ActiveRecord::Migration
  def change
    create_table :aliens do |t|
      t.integer :appendages
      t.string :origin
      t.string :name
      t.string :organic_substrate
      t.string :weakness
      t.string :strength
      t.references :spaceship_id
    end
  end
end
