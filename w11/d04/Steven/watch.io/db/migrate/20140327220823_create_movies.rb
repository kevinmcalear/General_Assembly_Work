class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :poster
      t.boolean :seen

      t.timestamps
    end
  end
end
