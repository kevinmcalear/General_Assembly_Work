class CreateWdinstagrams < ActiveRecord::Migration
  def change
    create_table :wdinstagrams do |t|
      t.string(:name)
      t.string(:url)
      t.date(:date)
    end
  end
end

#table name wdinstagrams