class Client
  def initialize(name, age)
    @name = name
    @age = age

    @client_pets = []
  end

  def name 
    return @name
  end

  def age
    return @age
  end

  def add_pet(pets)
    @client_pets.push(pets)
  end

  def surrender_pet(pets)
    @client_pets.slice(pets)
  end

  def list_pets
    @client_pets
  end


end
