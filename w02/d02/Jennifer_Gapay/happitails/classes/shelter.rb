class Shelter
  def initialize (shelter_name)
    @shelter_name = shelter_name
    @animals = []
    @clients =[]
  end

  def name
    return @name
  end

  def client
    return @client
  end

  def animal
    return @animal
  end

  # def adopt(an_animal)
    
  # end

  def add(an_animal)
    @animals.push an_animal
  end

end

