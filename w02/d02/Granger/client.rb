class Client
  attr_reader :name, :age
  attr_accessor :pets
  #harden

  def initialize(name, age)
    @name = name
    @age = age
    @pets = []
  end

  def adopt(animal)
    self.pets.push(animal)
  end

  def display_pets
    puts "Pets:"
    self.pets.each_with_index {|pet, num| puts (num + 1) + " " + pet}
  end

  def pick_pet
    puts "Pick a pet:"
    display_pets
    pet_choice = gets.chomp.to_i -1 #re-adjust index
  end

  def return_pet()
    pet = pets[pick_pet]
    pets.delete[pet]

    pet 
  end

end