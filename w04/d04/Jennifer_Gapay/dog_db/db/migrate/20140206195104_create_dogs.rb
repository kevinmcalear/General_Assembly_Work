class CreateDogs < ActiveRecord::Migration

  def change
    create_table (:dogs) do |t|
      t.string (:name)
      t.text (:breed)
      t.string (:age)

      # t.timestamps
    end
  end
end
