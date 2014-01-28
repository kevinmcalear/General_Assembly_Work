#######################
########## Nation class ###
#######################

class Nation
  def initialize
  end

  def creed
    return "all men are created equal"
  end

  def rise_up?
    return true
  end

  def self.join_hands(white_children, black_children)
  end

  def judge_by(characteristic)
    if characteristic == :color
      return false
    elsif :character
      return true
    end
  end

end

#######################
########## State class ####
#######################

class State
  def initialize(name)
    @name = name.to_s
    @people = [ { :ancestors => "slave-owners", :age => 11, :color => "white" },  {:ancestors => "slaves", :age => 14, :color => "black"}]
    @sons_of_former_slaves = { :ancestors => "slaves", :age => 13}
    @sons_of_former_slave_owners = { :ancestors => "slave-owners", :age => 12}
    @table_of_brotherhood = []
    @status = "a state sweltering with the heat of injustice and oppression"
    @emancipate = "an oasis of freedom and justice"
    @ringing = false
  end

  def name
    return @name
  end

  def table_of_brotherhood
    return @table_of_brotherhood
  end

  def sit_at_table(sons)
      sons.each {|son| @table_of_brotherhood << son}
  end

  def status
    return @status
  end

  def emancipate
    @status = "an oasis of freedom and justice"
  end

  def people
    return @people
  end

  def ringing?
    return @ringing
  end

  def let_freedom_ring
    @ringing = true
  end

end

########################
########## Freedom class ##
########################

class Freedom
  def initialize
  end

  def ring(state)
    state.let_freedom_ring
    @ring = []
    @ring << state
  end
end