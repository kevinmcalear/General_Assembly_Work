class State
  def initialize(name)
    @name = name
    @ringing = false
    @people = [] 
    @table_of_brotherhood = [@people[1]]
    @status = "a state sweltering with the heat of injustice and oppression"
  end

  def name 
    return @name
  end

  def people
    @people = [ { color: "black", age: 2, ancestors: "slaves"}, {color: "white" , age: 2, ancestors:"slave-owners"}]
  end

  def status
    return  @status
  end

  def age
  end

   def emancipate
    return @status =  "an oasis of freedom and justice" 
  end

  def table_of_brotherhood
    return @table_of_brotherhood
  end

  def sit_at_table(sons_of_former_slaves)
    @table_of_brotherhood.push(@people[0])
   end 

  def ringing?
    return @ringing
  end

  def free
    @ringing = true
  end
end

class Freedom
  def initialize
  end

  def ring(state)
    state.free
    array = []
    array << state
  end
end

class Nation
  def initialize
    # @join_hands = join_hands
  end

  def self.join_hands(white_children, black_children)
    return @join_hands
  end

  def judge_by(color)
    if color == :character
      return true
    else 
      color =  false
    end
  end



  def rise_up?
    return true
  end

  def creed
    return "all men are created equal"
  end
end