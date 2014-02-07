class AddDateTakenToWdinstagrams < ActiveRecord::Migration
  def change
    add_column :wdinstagrams, :date_taken, :date
  end
end
