class CreateDogs < ActiveRecord::Migration
  #name
  #breed
  #age


  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.integer :age
    end
  end
end
