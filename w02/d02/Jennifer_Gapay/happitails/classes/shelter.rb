class Shelter
  def initialize (shelter_name)
    @shelter_name = shelter_name
    @animal_list = []
    @client_list =[]
  end

  def name
    return @name
  end

  def client_list
    return @client_list
  end

  def animal_list
    return @animal_list
  end

  # def adopt(an_animal)
    
  # end

  def add(an_animal)
    @animals.push an_animal
  end

end

