class AddCrossoutToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :crossed_out, :boolean
  end
end
