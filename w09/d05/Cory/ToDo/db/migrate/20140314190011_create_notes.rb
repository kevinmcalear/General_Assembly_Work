class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :list
      t.boolean :completed

      t.timestamps
    end
  end
end
