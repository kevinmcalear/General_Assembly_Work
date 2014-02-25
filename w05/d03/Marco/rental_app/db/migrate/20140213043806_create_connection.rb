class CreateConnection < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.string :city
      t.string :name
      t.integer :level
      t.string :path
      t.string :state
    end
  end
end

# {
#   city: New York
#   name: Tribeca
#   level: 3
#   id: 105
#   parent_id: 102
#   path: tribeca-manhattan
#   state: NY
# }