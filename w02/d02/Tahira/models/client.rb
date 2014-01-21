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
    @pet.push(pet)
  end

  def print_pets
    puts "***#{self.name}'s Pets***"
     @pets.each do |pet|
      puts pet.name
    end
  end

end
