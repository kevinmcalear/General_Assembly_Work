require 'pry'
class Client
  def initialize(name, age)
    @name = name
    @age = age
    @pets = []
  end

  def name
    return @name
  end

  def pets
    return @pets
  end 
end