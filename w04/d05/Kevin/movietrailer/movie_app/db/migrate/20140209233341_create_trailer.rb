class CreateTrailer < ActiveRecord::Migration
  def change
    create_table :trailers do |t|
      t.string :name     
      t.string :embed_url
      t.references :movie
    end
  end
end
