class Nation
  def creed
    return "all men are created equal"
  end
  def rise_up?
    return true
  end
  def self.join_hands(people1, people2)
  end
  def judge_by(what)
    return false if what == :color
    return true if what == :character
  end
end

class State
  def initialize(name)
    @name = name
    people1 = {ancestors: "slaves", color: "black", age: 14}
    people2 = {ancestors: "slave-owners", color: "white", age: 13}
    @people = [ people1, people2]
    @table_of_brotherhood = []
    @status = "a state sweltering with the heat of injustice and oppression" 
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
  def sit_at_table(sons)
    sons.each do |son|
    table_of_brotherhood << son
    end
  end
  def emancipate
    @status = "an oasis of freedom and justice" 
  end
  def status
    return @status
  end
  def ringing?
    return @ringing
  end
  def ring
    @ringing = true
  end

end

class Freedom
  def initialize()
    @ring = []
  end
  def ring(what)
    what.ring #not sure why this works. should i be able to call that ring method from here?
    return @ring << what
  end

end













