class CreateInstagram < ActiveRecord::Migration
  def change
    create_table :instagrams do |t|
      t.string :photographer
      t.string :url
      t.string :date_taken
    end
  end
end

# Instagram.create(photographer: "Etan Berkowitz", url: "http://i.imgur.com/nDgIwHQ.jpg", date_taken: Time.now)
# Instagram.create(photographer: "Donny Berkowitz", url: "http://i.imgur.com/hopPTnu.jpg", date_taken: Time.now)
# Instagram.create(photographer: "Ronald Berkowitz", url: "http://i.imgur.com/RQtZ5IB.jpg", date_taken: Time.now)
# Instagram.create(photographer: "Hercules Berkowitz", url: "http://i.imgur.com/N1oo1w4.jpg", date_taken: Time.now)