class AlterCharacters < ActiveRecord::Migration
  def change
    rename_column :characters, :embed_url, :photo_url
    rename_column :characters, :title, :name
  end
end
