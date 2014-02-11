class CreateAliens < ActiveRecord::Migration
  def change
    create_table :aliens do |t|
      t.string "name"
      t.string "origin"
      t.references :spaceships
    end
  end
end
