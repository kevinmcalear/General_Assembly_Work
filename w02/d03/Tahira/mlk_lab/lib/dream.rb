class Nation
  def initialize()
    @states = Array.new
    @states = [1]
  end

  def judge_by(attribute)
      if attribute == :color
        return false
      else 
        return true
      end 
  end

  def self.join_hands(white, black)
    return @states
  end

  def creed
    return "all men are created equal"
  end

  def rise_up?
    return true
  end

end


class State
  def initialize(name)
    @name = name
    @white_children = {:ancestors => "slaves", :age => 18, :color => "white"}
    @black_children = {:ancestors => "slave-owners", :age => 18, :color => "black"}
    @people = [@white_children, @black_children]
    @together = Array.new
    @status = "a state sweltering with the heat of injustice and oppression"
    @ringing = false
  end

  def name
    return @name
  end

  def people
    return @people
  end

  def state
    return
  end

  def table_of_brotherhood
    return @together
  end

  def sit_at_table(white)
    @together.push(@white_children)
    @together.push(@black_children)
  end

  def status
    return @status
  end

  def ringing?()
   return @ringing
  end

  def ring
    @ringing = true
  end


  def emancipate
    @status = "an oasis of freedom and justice"
  end

end



class Freedom
  def ring(state)
    @states = Array.new
    @states.push(state)
    state.ring
    return @states
  end



  def state(state)
    
  end
end
