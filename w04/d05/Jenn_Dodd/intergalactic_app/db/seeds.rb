enterprise = Spaceship.create(name: "Enterprise", capacity: 100, origin: "Earth", species_allowed: "Any", photo_url:"http://static1.wikia.nocookie.net/__cb20120317051821/memoryalpha/en/images/9/91/USS_Enterprise-A_in_spacedock.jpg", purpose: "space exploration")
serenity = Spaceship.create(name: "Serenity", capacity: 10, origin: "Earth", species_allowed: "humans", photo_url:"http://www.entertainmentearth.com/images/AUTOIMAGES/QMSER0179lg.jpg", purpose: "smuggling")

enterprise.aliens.create(appendages: 4, origin: "Earth", name: "Kirk", organic_substrate: "carbon", weakness: "humility", strength: "captaining")
enterprise.aliens.create(appendages: 4, origin: "Vulcan", name: "Spock", organic_substrate: "carbon", weakness: "empathy", strength: "vulcan death grip")

serenity.aliens.create(appendages: 4, origin: "Earth", name: "Mal", organic_substrate: "carbon", weakness: "humility", strength: "captaining")
serenity.aliens.create(appendages: 4, origin: "Earth", name: "Zoe", organic_substrate: "carbon", weakness: "niceness", strength: "general badassness")