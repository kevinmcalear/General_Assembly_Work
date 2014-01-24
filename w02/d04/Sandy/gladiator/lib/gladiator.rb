class Gladiator
   def initialize(name, weapon)
        @name = name
        @weapon = weapon
  end
    
    def name
      return @name
    end
    
    def weapon
      return @weapon
    end
end

class Arena
  def initialize(name)
    @name = name
  end
  
  def name
    return @name.uppercase!
  end
end
