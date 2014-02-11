class CreateSpaceships < ActiveRecord::Migration
  def change
    create_table :spaceships do |t|
      t.string "name"
      t.integer "capacity"
      t.text "photo_url"
    end
  end
end

