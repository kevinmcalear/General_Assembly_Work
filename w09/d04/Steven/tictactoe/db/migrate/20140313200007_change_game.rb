class ChangeGame < ActiveRecord::Migration
  def change
    change_table :games do |t|
      t.change :won, :string
    end
  end
end
