##Data##

##Classes##
class Freedom
def ring(state)
  state.ring
  return [] << state
end

end

class Nation

  def judge_by(attribute)
    if attribute == :character
      return true
    else
      return false
    end
  end

  def rise_up?
    return true
  end

  def creed
    return "all men are created equal"
  end

  def self.join_hands(white_children, black_children)
  end

end

class State

  def initialize(state)
    @status = "a state sweltering with the heat of injustice and oppression"
    @state = state
    @people = [
      {ancestors: "slave-owners", age: 18, color: "white"},
      {ancestors: "slaves", age: 18, color: "black"}
    ]
    @table_of_brotherhood = []

  end

  def name
    return @state
  end

  def status
    return @status
  end

  def people
    return @people
  end


  def ring
   @ring = true
  end
 


  def ringing?
    return @ring
  end


  def emancipate
    @status = "an oasis of freedom and justice"
  end

  def table_of_brotherhood
    return @table_of_brotherhood
  end

  def sit_at_table(state)
    @table_of_brotherhood = @people
  end



end


