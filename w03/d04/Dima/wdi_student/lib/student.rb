# class Student
#   def initialize
#     @name = "Dima"
#     @knowledge = 0
#     @energy = "full"
#   end

#   def name
#     @name
#   end

#   def knowledge
#     @knowledge
#   end

#   def energy
#     @energy
#   end

#   def code
#     @knowledge = 5
#     @energy = "tired"
#   end
# end

class Student
  def initialize(name)
    @name = name
    @energy_level = 100
    @smarts = 0
  end

  def name
    @name
  end

  def energy_level
    return @energy_level
  end

  def smarts
    return @smarts
  end

  def break
    @energy_level = 100
  end

  def code
    if  energy_level == 0
      return smarts
    else
      @energy_level = 0
      @smarts += 1
    end
  end
end