class Nation

  def creed
    return "all men are created equal"
  end

  def rise_up?
    return true
  end

  def self.join_hands(white_children, black_children)
    return @join_hands
  end

  def judge_by(x)
    case x
      when :color
        return false
      when :character
        return true
  end
end

end


class State
  def initialize(name)
    @name = name
    @table_of_brotherhood = []
    
    # @sons_of_former_slaves = []
    @status = "a state sweltering with the heat of injustice and oppression"
    @ringing = false
  end

  def name
    return @name
  end

  def people
    boys_and_girls = [{age: 12, ancestors: "slaves", color: "black"}, {age: 14, ancestors: "slave-owners", color: "white"}]

  end

  def status
    return @status
  end

  def table_of_brotherhood
      return @table_of_brotherhood
  end

  def sit_at_table(people)
    @table_of_brotherhood = people
  end

  def emancipate
    @emancipate = "an oasis of freedom and justice" 
    @status = @emancipate
  end

  def ringing?
    return @ringing

  end

  def free
    @ringing = true
    
  end


end

class Freedom

  def ring(state)
    state.free
    ring = []
    ring.push(state)
  end


end


# georgia = State.new("Georgia")

