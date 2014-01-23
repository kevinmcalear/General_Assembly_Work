class State
  def initialize(state)
    @state = state
    @emancipate = "a state sweltering with the heat of injustice and oppression"
    @table_of_brotherhood = []
    @ringing = false
  end
  def name
    return @state  
  end
  def people
    array = [{:color => "black", :age => 2, :ancestors => "slaves"},{:color => "white", :age => 2, :ancestors => "slave-owners"}]
  end
  def status
    return @emancipate
  end
  def ringing?
    @ringing
  end
  def table_of_brotherhood
    @table_of_brotherhood
  end
  def sit_at_table(people)
    @table_of_brotherhood = people
  end
  def emancipate
    @emancipate = "an oasis of freedom and justice"
    return @emancipate
  end
  def free
    @ringing = true
  end
end

class Nation
  def creed
    return "all men are created equal"
  end
  def rise_up?
    return true
  end
  def judge_by(test)
    if (test) == (:color)
      return false
    else 
      return true
    end
  end
  def self.join_hands(white_children, black_children)
  end
end

class Freedom
  def ring(state)
    state.free
    array = []
    array << state
  end
end
