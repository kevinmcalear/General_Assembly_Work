class Freedom

  def ring(state)
    state.ring
    array = [state]
    return array
  end

end

class Nation

  def creed
    return "all men are created equal"
  end

  def rise_up?
    return true
  end

  def judge_by(color)
    if color == :character
      return true
    else
      return false
    end
  end

  def self.join_hands(arg1, arg2)

  end

end

class State

  def initialize(state)
    @ring = false
    @status = "a state sweltering with the heat of injustice and oppression"
    @table_of_brotherhood = []
    @state = state.to_s
    @people = [
      {ancestors: "slave-owners", age: 10, color: "white"}, 
      {ancestors: "slaves", age: 10, color: "black"}
    ]
    #@boys_and_girls = [{color: "white"}, {color: "black"}]
    #@sons_of_former_slaves = []
    #@sons_of_former_slave_owners = []
  end

  def name
    return @state
  end

  def people
    return @people
  end

  def status
    return @status
  end


  def table_of_brotherhood
    return @table_of_brotherhood
  end

  def sit_at_table(table)
    @table_of_brotherhood = @people
  end

  def emancipate
    #if @state == "Mississippi"
    @status = "an oasis of freedom and justice"
  end

  def first
  end

  def ring
    @ring = true
  end


  def ringing?()
    return @ring
    # if @state == "New York"
    #   return true
  end


end

freedom = Freedom.new
#georgia = State.new(georgia)


