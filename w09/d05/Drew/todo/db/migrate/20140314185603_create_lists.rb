class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :task
      t.boolean :completed, :default => false

      t.timestamps
    end
  end
end
