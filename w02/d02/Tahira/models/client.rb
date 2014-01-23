class Client
  def initialize(name, age)
    @name = name
    @age = age 
    @pets = Array.new
  end

  def name
    return @name
  end

  def age
    return @age
  end

  def pets
    return @pets
  end

  def add_pet(pet)
    @pets.push(pet)
  end

  def get_pet(name_animal)
    animal = @pets.find do |pet|
      pet.name == name_animal
    end
    return animal
  end

  def print_pets
    puts "***#{self.name}'s Pets***"
     @pets.each do |pet|
      puts pet.name
    end
  end

end

