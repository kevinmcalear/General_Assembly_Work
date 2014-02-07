class Nation
  def initialize
     @creed
     @rise_up 
  end
  def creed
    @creed = "all men are created equal"
  end
  def rise_up?
    return @rise_up = true
  end
  def self.join_hands(arg1, arg2)
    return
  end
  def judge_by(attribute)
      if attribute == :color
        return false
      elsif attribute == :character
        return true
      end

        return false
  end

end

class State
  def initialize(name)
    @ringing = false
    @name = name
    @people = 
      [
        {:color=> "white", :white_children=>"white",:ancestors=>"slave-owners", :age=>12},
        {:color=> "black", :black_children=>"black",:ancestors=>"slaves", :age=>15}
      ]
    @table_of_brotherhood = []
    @status = "a state sweltering with the heat of injustice and oppression"
    @sons_of_former_slaves = []
    @sons_of_former_slave_owners = []
  end
  def name
    return @name
  end
  def people
    return @people
    # return @people = {boys_and_girls:"", age:""}
  end
  def status
    return @status
  end 
  def emancipate
    return @status = "an oasis of freedom and justice" 
  end 
  def table_of_brotherhood
    return @table_of_brotherhood
  end 
  def sit_at_table(argument)
    return @table_of_brotherhood = @people
  end
  def ringing?
    return @ringing
  end
  def ring2
    @ringing = true 
  end 
end

class Freedom
  def initialize
  end 
  def ring(arg)
    arg.ring2
    @ring = []
    @ring.push(arg)
  end
end
