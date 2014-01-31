class Nation
  def initialize
    @join_hands = []
  end

  def creed
    return "all men are created equal"
  end

  def rise_up?
    return true
  end

  def self.join_hands(white_children, black_children)
  end

  def judge_by(key)
    if key == :color
      return false
    elsif key == :character
      return true
    end
  end
end

class State
  def initialize(name)
    @name = name
    @people = [person1 = {:ancestors => "slaves", :age => 15, :color => "white"}, person2 = {:ancestors => "slave-owners", :age => 16, :color => "black"}]
    @sons_of_former_slaves = [{:ancestors => "slaves"}]
    @sons_of_former_slave_owners = [{:ancestors => "slave-owners"}]
    @table_of_brotherhood = []
    @status = "a state sweltering with the heat of injustice and oppression"
    @boys_and_girls = [person1, person2]
    # @white_children = [person1]
    # @black_children = [person2]
    @ringing = false
  end

  def name
    return @name
  end

  def people
    return @people
  end

  def table_of_brotherhood
    return @table_of_brotherhood
  end

  def sons_of_former_slaves
    return @sons_of_former_slaves
  end

  def sit_at_table(argument)
    @table_of_brotherhood = argument
  end

  def status=(status)
    @status = status
  end

  def status
    return @status
  end
  
  def emancipate
    self.status = "an oasis of freedom and justice" 
  end

  def boys_and_girls
    return @boys_and_girls
  end

  # def black_children
  #   return @black_children
  # end

  # def white_children
  #   return @white_children
  # end

  def ringing?
    return @ringing
  end

  def ring
    @ringing = true
  end

end


class Freedom
  def initialize
    @ring = []
  end

  # def ring(*state)
  #   state.each do |st|
  #     if st[:name] != "Washington, DC"
  #       st.ringing 
  #       @ring << st
  #     end
  #   end
  #   # return @ring
  # end

  def ring(state)
    state.ring
    @ring << state
  end

end









