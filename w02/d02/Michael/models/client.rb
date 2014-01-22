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

class CatLady < Client  
  def initialize (name, age)
    super(name, age)
    @cats = []
  end 
end 