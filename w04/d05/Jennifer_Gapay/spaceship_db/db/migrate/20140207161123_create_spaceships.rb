class CreateSpaceships < ActiveRecord::Migration
  def change
    create_table :spaceships do |t|
      t.string(:name)
      t.integer(:capacity)
      t.string(:origin)
      t.text(:photo_url)
      t.string(:purpose)
    end
  end
end
