class AlterTrailers < ActiveRecord::Migration
  def change
    add_column :trailers, :movie_id, :integer
  end
end
