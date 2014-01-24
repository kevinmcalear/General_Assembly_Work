class Arena
  attr_reader :name 
  attr_accessor :gladiators

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    if @gladiators.size < 2
      @gladiators << gladiator
    end

  end

  def fight
    beats = {
      trident: :spear, 
      spear: :club, 
      club: :trident
    }
    if gladiators.size != 2
      return "error"
    else 

      if beats[gladiators[0].weapon] == gladiators[1].weapon
        @gladiators.delete_at(1)
      elsif beats[gladiators[1].weapon] == gladiators[0].weapon
              puts "LLLLLLLLLLLxs"
        @gladiators.delete_at(0)
      else
        @gladiators = []
      end


    end
  end

end