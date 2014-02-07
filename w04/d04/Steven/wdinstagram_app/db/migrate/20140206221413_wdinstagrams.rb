class Wdinstagrams < ActiveRecord::Migration
  def change
    create_table :wdinstagrams do |t|
      t.string :name
      t.string :img_address
    end
  end
end
