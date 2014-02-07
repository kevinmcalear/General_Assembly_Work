class WdInstagram < ActiveRecord::Migration
#   * Author
# * Photo_url
# * Date_taken
  def change
    create_table :entries do |t|
      t.string :author
      t.string :photo_url
      t.date :date_taken
    end
  end
end
