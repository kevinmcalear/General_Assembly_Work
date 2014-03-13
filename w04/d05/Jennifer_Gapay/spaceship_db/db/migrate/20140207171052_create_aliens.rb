class CreateAliens < ActiveRecord::Migration
  def change
    create_table :aliens do |t|
      t.string :name
      t.string :origin
      t.string :organic_composition
      t.string :vulnerabilities
      t.integer :strength
      t.references :spaceship
    end
  end
end