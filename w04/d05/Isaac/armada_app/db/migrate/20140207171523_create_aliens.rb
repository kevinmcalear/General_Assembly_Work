class CreateAliens < ActiveRecord::Migration
  def change
    create_table :aliens do |t|
      t.integer :appendages
      t.string :origin
    end
  end
end
