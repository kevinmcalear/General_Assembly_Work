class CreateSpaceships < ActiveRecord::Migration
  def change
    create_table :spaceships do |t|

      t.timestamps
    end
  end
end
