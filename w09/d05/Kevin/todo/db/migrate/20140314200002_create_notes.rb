class CreateNotes < ActiveRecord::Migration
  def up
    create_table :notes do |t|
      t.string :list_item
      t.boolean :complete

      t.timestamps
    end
  end

  def down
    drop_table :notes
  end
end