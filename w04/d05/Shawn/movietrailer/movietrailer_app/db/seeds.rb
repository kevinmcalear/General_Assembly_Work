# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.create({title: "Her", year: 2013, poster_url: "http://www.impawards.com/2013/posters/her_xlrg.jpg"})
Movie.create({title: "American Hustle", year: 2013, poster_url: "http://baleheadsblog.com/wp-content/uploads/2013/11/AmericanHustle_intl.jpg"})
Movie.create({title: "Inside Llewyn Davis", year: 2013, poster_url: "http://www.impawards.com/2013/posters/inside_llewyn_davis_ver2.jpg"})

Character.create({name: "Joaquin Phoenix", photo_url: "http://www.vh1.com/celebrity/bwe/images/2010/05/joaquin.jpg" , movie_id: 1})
Character.create({name: "Amy Adams", photo_url: "http://images.askmen.com/photos/amy-adams/amy-adams-90912.jpg", movie_id: 1 })

Character.create({name: "Christian Bale", photo_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQopQVuo8YgWHq76Yz760n4aNBFtuX81OBZtoUMK8Ol1Q9Fz396" , movie_id: 2})
Character.create({name: "Bradley Cooper", photo_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQmIbj4ngl40GtZO7B8u88yWOKe_1qEWjEjB0yP10txEpOOxUBfbA" , movie_id: 2})

Character.create({name: "Oscar Isaac", photo_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRUuHOH8KpjCMI3kmYo4ewn5GYJ_wVdH0PHpHexwWfrykK3fsLJ", movie_id: 3})
Character.create({name: "Carey Mulligan", photo_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRSW-YYi19LuhoE4PtLHiPJ-7n8u5Du7zMzBLtQGBoiH2DzmCxMNA", movie_id: 3})

Trailer.create({title: "Her", embed_url: "http://www.youtube.com/embed/WzV6mXIOVl4", movie_id: 1})
Trailer.create({title: "American Hustle", embed_url: "http://www.youtube.com/embed/ST7a1aK_lG0", movie_id: 2})
Trailer.create({title: "Inside Llewyn Davis", embed_url: "http://www.youtube.com/embed/LFphYRyH7wc", movie_id: 3})