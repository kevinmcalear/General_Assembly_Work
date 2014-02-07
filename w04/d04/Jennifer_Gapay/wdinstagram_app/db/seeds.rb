# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Gram.delete_all

Gram.create(author: "jgypsygrrl", photo_url: "http://www.imperialfiesta.com/imagenes/lugares/Chichen-Itza-Cenote1.png", date_taken: "01/01/14")

Gram.create(author: "jgypsygrrl", photo_url: "http://i1.sndcdn.com/artworks-000043764598-ly69a5-t500x500.jpg?3eddc42", date_taken: "01/01/14")

Gram.create(author: "jgypsygrrl", photo_url: "http://www.imperialfiesta.com/imagenes/lugares/chichen-itza%20cenote.jpg", date_taken: "01/01/14")

Gram.create(author: "jgypsygrrl", photo_url: "http://i1.sndcdn.com/artworks-000014964313-ymynyw-t500x500.jpg?d53bf9f", date_taken: "01/01/14")

Gram.create(author: "jgypsygrrl", photo_url: "http://data2.whicdn.com/images/67713637/large.jpg", date_taken: "01/01/14")
