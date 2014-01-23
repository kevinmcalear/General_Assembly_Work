class Client
  def initialize(name, age)
    @name = name
    @age = age
    @pets = []
  end

  def name
    @name
  end

  def age
    @age
  end

  def pets
    @pets
  end

  def add_pet(shelter_animal)
    self.pets << shelter_animal
  end
end
