#################
### Seed Some Data
#################
shelter = Shelter.new("Happitails")
animal_1 = shelter.add_animal("Fluffy", cat)
animal_2 = shelter.add_animal("Milo", peacock)
animal_3 = shelter.add_animal("Bruno", elephant)
shelter.animals << animal_1
shelter.animals << animal_2
shelter.animals << animal_3
jessica = Person.new("Jessica", 24)
shelter.clients << jessica
jenna = Person.new("Jenna", 24)
shelter.clients << jessica


