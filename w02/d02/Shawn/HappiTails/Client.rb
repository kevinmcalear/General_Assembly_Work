#HappiTails Animal Shelter
#Client Object Definition

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

  def to_s
    return "#{name} (#{age})"
  end
end