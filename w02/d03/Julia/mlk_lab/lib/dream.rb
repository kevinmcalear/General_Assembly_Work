class State

  def initialize(name)
   @name = name.to_s
   @people = [{ancestors: "slaves", age: 25}, {ancestors: "slave-owners", age: 56}, {child_1: "julia", age: 18, color: "white"}, {child_2: "bob", age: 14, color: "black"}]
   @table_of_brotherhood = []
   @sons_of_former_slaves = [{:ancestors => "slaves"}]
   @status =  "a state sweltering with the heat of injustice and oppression"
   #@boys_and_girls = [{child_1: "julia", age: 18, color: "white"}, {child_2: "bob", age: 14, color: "black"}]
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

  #for it to be true, you need to set your input to the table of brotherhood
  def sit_at_table(people)
    return @table_of_brotherhood = people
  end

  def status
    return @status
  end

  def emancipate
   @status = "an oasis of freedom and justice"
  end

  def ringing?
    return @ringing
  end

  def ring
    @ringing = true
  end

  #def boys_and_girls
   # return @boys_and_girls
  #end

end

#nation class
class Nation

  def creed
    @creed = "all men are created equal"
  end

  def rise_up?
    return true
  end

  def self.join_hands(white_children, black_children)
  end

  def judge_by(arg1)
    if arg1 == :color 
      return false
    else
      return true
    end
  end

end

class Freedom

  def ring(state)
    state.ring
    @ring = [].push(state)
  end

end