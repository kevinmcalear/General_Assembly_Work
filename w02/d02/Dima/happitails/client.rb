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

  def add_pet
    clients_pet = Animal.new
    self.pets << clients_pet
  end
end
