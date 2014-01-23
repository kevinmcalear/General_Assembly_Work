class State
  def initialize(state)
    @state = state
    @table_of_brotherhood = []
    @emancipate = "a state sweltering with the heat of injustice and oppression"
    @ringing = false
  end

  def name
    return @state
  end

  def people
    array = [ {color: "black", age: 2, ancestors: "slaves"}, {color: "white" , age: 2, ancestors:"slave-owners"}]
  end

  def table_of_brotherhood
    @table_of_brotherhood
  end

  def sit_at_table(people)
    @table_of_brotherhood = people
  end

  def status
    @emancipate
  end

  def emancipate
    @emancipate = "an oasis of freedom and justice" 
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
    array = []
    array << state
  end



end

class Nation
  def creed 
    return "all men are created equal"
  end

  def self.join_hands(white_children, black_children)
  end

  def judge_by(test)
    if :color == test
    return false
  else 
    return true
  end

  end

  def rise_up?
    return true
  end
end