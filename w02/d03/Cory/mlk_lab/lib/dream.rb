class Nation
  def creed
    return "all men are created equal"
  end
  def rise_up?
    return true
  end
  def self.join_hands(white_children, black_children)
    
  end
  def judge_by(judge)
    if judge == :character
      return true
    end
  end
end

class State
  def initialize(name)
    @name = name
    @people = [person1 = {:color => "black", :age => 2, :ancestors => "slaves"}, 
                        person2 = {:color => "white", :age => 3, :ancestors => "slave-owners"}, ]
    @table_of_brotherhood = []
    @sons_of_former_slaves = []
    @sons_of_former_slave_owners = []
    @emancipate = "a state sweltering with the heat of injustice and oppression"
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
  def sit_at_table(arg)
    return @table_of_brotherhood = @people
  end
  def sons_of_former_slaves
    return @sons_of_former_slaves
  end
    def status
    return @emancipate
  end
  def emancipate
    @emancipate = "an oasis of freedom and justice"
  end
  def ringing?
    @ringing
  end
  def free
    @ringing = true
  end
end

class Freedom
  def ring(arg)
    arg.free
    ring = []
    return ring.push(arg)
  end
end