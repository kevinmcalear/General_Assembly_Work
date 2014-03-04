class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :sex
      t.string :email
      t.text :facebook_link
      t.string :password
      t.timestamps
    end
  end
end
