class State
  def initialize(name)
    @name = name
    @table = []
    @status = "a state sweltering with the heat of injustice and oppression"
    @ringing = false
  end

  def name
    @name
  end

  def people
    [{:ancestors => "slaves", :age => 12, :color => "black"},{:ancestors => "slave-owners", :age => 12, :color => "white"}]
  end

  def table_of_brotherhood
    @table
  end

  def sit_at_table(people)
    @table = people
  end

  def status
    @status
  end

  def emancipate
    @status = "an oasis of freedom and justice"
  end

  def ringing?
    @ringing
  end

  def ringing=(ringing)
    @ringing = ringing
  end
end

class Freedom
  def initialize
    @states = []
  end

  def ring(*states_list)
    states_list.each do |state|
      state.ringing = true
      @states << state unless state.name == "Washington, DC"
    end
    @states
  end
end

class Nation
  def creed
    "all men are created equal"
  end

  def rise_up?
    true
  end

  def self.join_hands(person1, person2)
  end

  def judge_by(aspect)
    if aspect == :character 
      return true
    end
    return false
  end
end
