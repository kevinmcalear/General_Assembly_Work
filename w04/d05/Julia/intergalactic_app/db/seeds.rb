Spaceship.delete_all
Alien.delete_all

Spaceship.create(name: "Planet Voyager", capacity: 22, origin: "Darkside of the Moon", species_allowed: "Canines Only", photo_url: "http://imgs.tuts.dragoart.com/how-to-draw-a-spaceship_1_000000003677_3.jpg", purpose: "exploration")

Alien.create(appendages: 4, origin: "Mars", name: "Zeton", organic_substrate: "Carbon", weakness: "Melts", strength: "Mind Reader", spaceship_id: 1)
Alien.create(appendages: 9, origin: "Pluto", name: "Primus", organic_substrate: "Lead", weakness: "Sweats Goo", strength: "Shapeshifter", spaceship_id: 1)
Alien.create(appendages: 12, origin: "Pluto", name: "Snappy", organic_substrate: "Lead", weakness: "Sweats Goo", strength: "Shapeshifter", spaceship_id: 2)
