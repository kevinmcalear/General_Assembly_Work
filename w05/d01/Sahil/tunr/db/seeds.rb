Artist.delete_all
Song.delete_all

kanye = Artist.create(name: "Kanye West", genre: "Hip Hop", photo_url: "http://cdn.nextimpulsesports.com/wp-content/uploads/2013/09/kanyewest.jpg")
beyonce = Artist.create(name: "Beyonce", genre: "Hip Hop", photo_url: "http://media1.policymic.com/site/articles/items/27957/2_gif.gif")

Song.create(title: "All Falls Down", year: "2004", artist_id: kanye.id)
Song.create(title: "Yeezus", year: "2013", artist_id: kanye.id)
Song.create(title: "Drunk in Love", year: "2013", artist_id: beyonce.id)