class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :movie, null: false
      t.string :title
      t.string :poster
      t.boolean :seen, default: false

      t.timestamps
    end
  end
end
