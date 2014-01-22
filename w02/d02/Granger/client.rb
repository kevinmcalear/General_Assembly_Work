class Client
  attr_reader :name, :age
  attr_accessor :pets


  def initialize(name, age)
    @name = name
    @age = age
    @pets = []
  end

  def adopt(animal)
    if self.pets.length < 2
      self.pets.push(animal)
      return true
    else
      puts "You already have two pets."
      return false
    end
  end

  def display_pets
    puts "Pets:"
    self.pets.each_with_index {|pet, num| puts "#{(num + 1)} #{pet.name}"}
  end

  def pick_pet
    puts "Pick a pet:"
    display_pets
    pet_choice = (gets.chomp.to_i) -1 #re-adjust index
  end

  def return_pet()
    pet = pets[pick_pet]
    pets.delete(pet)

    pet 
  end

end