class Nation
  def creed
    return "all men are created equal"
  end

  def self.join_hands(white_children, black_children)
  end

  def judge_by(color)
    if color == :character
      return true
    else
    color = false
    end
  end

  def rise_up?
    return true
  end

end

class State
  def initialize(name)
    @name = name
    @people = people
    @table_of_brotherhood = [@people[0]]
    @status = "a state sweltering with the heat of injustice and oppression"
    @ringing = false
  end

  def name
    return @name
  end

  def people
    @people = [{:ancestors => "slave-owners", :age => 2, :color => "white"},
               {:ancestors => "slaves", :age => 2, :color => "black"}]
  end

  def status
    return @status
  end

  def ringing?
    return @ringing
  end

  def freedom!
    @ringing = true
  end

  def emancipate
    return @status = "an oasis of freedom and justice"
  end

  def table_of_brotherhood
    return @table_of_brotherhood
  end

  def sit_at_table(sons_of_former_slaves)
    @table_of_brotherhood.push(@people[1])
  end
end

class Freedom

  def ring(state)
    state.freedom!
    array = []
    array << state
end


end

