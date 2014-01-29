class Nation
  def creed
    "I have a dream that one day this nation will
    rise up and live out the true meaning of its
    creed - we hold these truths to be self-
    evident: that all men are created equal."
  end
  def rise_up?
    return true
  end
  def judge_by(trait)
     if trait == :character
       return true
     end
  end
  def join_hands(x,y)
    x.merge(y)   
  end

end
class State
  def initialize(name)
    @name = name
    @people = [{ancestors: "slave-owners", age: 13, color: "black"},{ancestors: "slaves", age: 14,color: "white"}]
    #@boys_and_girls = [{ancestors: "slave-owners", age: 13, color: "black"},{ancestors: "slaves", age: 14,color: "white"}]
    @table_of_brotherhood = [@people[0]]
    @status = "a state sweltering with the heat of injustice and oppression" 
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
  def sit_at_table(sons_of_former_slaves)
    @table_of_brotherhood.push(@people[1])
  end
  def status
    return @status
  end
  def emancipate
    @status = "an oasis of freedom and justice" 
  end
end
class Freedom
  def ring(state)
    [new_hampshire]
  end
end