class AliensEdit < ActiveRecord::Migration
  def change
      change_table :aliens do |t|
      t.text :photo_url
    end
  end
end
