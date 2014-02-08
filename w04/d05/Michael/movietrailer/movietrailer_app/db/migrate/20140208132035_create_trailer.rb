class CreateTrailer < ActiveRecord::Migration
  def change
    create_table :trailers do |t|
      t.string :title
      t.string :embed_url
      t.references :movies
    end
  end
end
