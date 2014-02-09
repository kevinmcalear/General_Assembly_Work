class CreateTrailers < ActiveRecord::Migration
  def change
    create_table :trailers do |t|
      t.string :title
      t.text :embed_url
      t.belongs_to :movie
    end
  end
end
