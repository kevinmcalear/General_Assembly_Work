class Nation
  def creed
    "all men are created equal"
  end

  def rise_up?
    true
  end

  def self.join_hands(w,b)
  end

  def judge_by(color)
    case color
    when :color
      return false
    else
      return true
    end
  end

end

class State
  def initialize(name)
    @name = name
    #Georgia
    @person1 = {ancestors: "slaves", age: 14, color: "black"}
    @person2 = {ancestors: "slave-owners", age: 12, color: "white"}
    @people = [@person1, @person2]
    @table_of_brotherhood = []

    #Mississippi
    @status = "a state sweltering with the heat of injustice and oppression"

    #ring
    @be_ringing = false
  end

  def ringing?
    @be_ringing
  end

  def ringing=(val)
    @be_ringing = val
  end

  def name
    @name
  end

  def people
    @people
  end

  def table_of_brotherhood
    @table_of_brotherhood
  end

  def sit_at_table(argument)
    @table_of_brotherhood += argument
  end

  def emancipate
    @status = "an oasis of freedom and justice"
  end

  def status
    @status
  end

end

class Freedom
  def initialize
    @ring = []

  end

  def ring(*states)
    states.each do |state|
      state.ringing = true
      @ring += [state] unless state.name == "Washington, DC"
    end

    @ring
  end


end


