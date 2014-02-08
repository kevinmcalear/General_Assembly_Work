class CreateAliens < ActiveRecord::Migration
  def change
    create_table :aliens do |t|
      t.string :name
      t.integer :appendages
      t.string :organic_substrate
      t.string :weakness
      t.string :strength
      t.belongs_to :spaceships
    end
  end
end

