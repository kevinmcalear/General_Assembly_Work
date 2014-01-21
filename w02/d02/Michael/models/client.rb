class Client
  def initialize(name, age)
    @name = name
    @age = age
    @animals = []
  end 
  def name
    return @name
  end
  def age
    return @age
  end 
  def animals
    @animals
  end 
  def create_animals_array(array)
    self.animals.push(array)
  end 
end 


##TEST###
# tom = Client.new("Tom", 10)
# tom.create_animals_array(["Rover"])
# puts tom.name
# puts tom.age
# puts tom.animals