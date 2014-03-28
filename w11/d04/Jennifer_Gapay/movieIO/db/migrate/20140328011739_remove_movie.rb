class RemoveMovie < ActiveRecord::Migration
  def change 
    remove_column :movies, :movie
  end
end
