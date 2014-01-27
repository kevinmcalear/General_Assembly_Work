
class Nation
  def initialize
    @creed = "all men are created equal"
    @rised_up = true
  end

  def creed
   return @creed
 end

 def rise_up?
  return @rised_up
end

def judge_by(color)
  if color == :color
    false
  elsif color == :character
    true
  end
end

  def self.join_hands(white_children, black_children)
  end
end

class State
  def initialize(name)
    @name = name
    @people = [{ancestors: "slave-owners", age: 2, color: "white"},{ancestors: "slaves", age: 3, color: "black"}]
    @table_of_brotherhood =[]
    @emancipate = "a state sweltering with the heat of injustice and oppression"
  end

  def name
    return @name
  end

  def status
    @emancipate 
  end

  def emancipate
    @emancipate = "an oasis of freedom and justice" 
  end

  def people
    @people
  end

  def ring
    @ring = true
  end

  def ringing?
    return @ring
  end

  def table_of_brotherhood
    return @table_of_brotherhood
  end

  def sit_at_table(person)
    @table_of_brotherhood = person
  end
end

class Freedom
  def ring(state)
    state.ring
    return [] << state
  end

  def ringing?(state)
    if state == new_york
      false
    end
  end

end
