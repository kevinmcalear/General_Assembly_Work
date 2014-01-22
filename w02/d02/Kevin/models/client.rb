class Client
  def initialize(name, age)
    @name = name
    @age = age
    @pets = []
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

  def add_pets(pet)
    @pet = pet
    @pets << @pet
  end

  def list
    @pets.each {|pet| puts pet}
  end

  # def make_hash
  #   return {:name => @name, :age => @age, :pets => @pets}
  # end

end