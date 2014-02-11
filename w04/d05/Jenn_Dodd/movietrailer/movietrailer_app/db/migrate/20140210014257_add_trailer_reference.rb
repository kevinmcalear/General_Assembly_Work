class AddTrailerReference < ActiveRecord::Migration
  def change
    change_table :trailers do |t|
      t.references :movie
    end
  end
end
