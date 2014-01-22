class Person
  def initialize(name, age)
    @name = name
    @age = age
    @pets = {}
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

  def display_pets
    pets.values.join("\n")
  end

  def to_s
    "#{@name} is a #{@age} year old with #{@pets.count} pets"
  end
end
