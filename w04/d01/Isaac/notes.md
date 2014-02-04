musical = Musical.find (title:"Sound")
musical.songs
=> [sonng, song]

musical.songs.create(title: " ")

class Fridge
self.has_many(:foods, {:dependent => :destroy})

optional second argument, which is a hash.

1. fridge.destroy
delete from fridges... id=2
second step: delete from foods where fridge id = 2

Domain: 4 chefs
3 ingredients 
3 courses
course 1, 4 chefs, decending 
3 judges determine who gets chopped 
judges give each dish a rating from 1-5, the one with the lowest cummulative rating gets CHOPPED. a tie is decided randomly 
encode each step of this game process.