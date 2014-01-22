require_relative "client"

class CatLady < Client

  def adopt(animal)
    if  animal.species == "cat"
      self.pets.push(animal)
      return true
    else
      puts "Only cats for you."
      return false
    end
  end

end