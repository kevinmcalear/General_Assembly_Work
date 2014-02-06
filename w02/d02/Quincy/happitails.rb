class Animal
  def initiaize(a_name, species)
    @a_name = a_name
    @species = species
    @toys = []
  end

  def a_name
    return @a_name
  end

  def species
    return @species
  end

  def add_toys(toy)
    @toys.push(toy)
  end

  def lose_toys(toys)
    @toys.pop
  end
end

class Client
  def initialize(c_name, age, pets)
    @c_name = c_name
    @age = age
    @pets = {}
  end

  def c_name
    return @c_name
  end

  def age
    return @age
  end

  def add_pets
    @pets 
  end
end

class Shelter
  def initialize(s_name, animals, clients)
    @s_name = s_name
    @animals = animals
    @clients = clients
  end

  def s_name
    return @s_name
  end

  def animals
    return @animals
  end

  def clients
    return @clients
  end
end
