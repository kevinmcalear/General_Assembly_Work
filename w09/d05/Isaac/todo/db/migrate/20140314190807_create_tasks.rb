class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :todo

      t.timestamps
    end
  end
end
