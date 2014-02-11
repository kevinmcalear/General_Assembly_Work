class Change < ActiveRecord::Migration
  def change
    change_table :trailers do |t|
      t.rename :name, :title
      t.rename :photo_url, :embed_url
    end
      
  end
end
