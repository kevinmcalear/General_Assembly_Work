class State
  def initialize(name)
    @name = name
    @people = [{:color => "black", :ancestors => "slaves", :age => 2}, {:color => "white", :ancestors => "slave-owners", :age => 2}]
    @table_of_brotherhood =[]
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

  def sit_at_table(people)
    return @table_of_brotherhood = @people
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

  def put_a_ring_on_it
    return @ringing = true
  end
end

class Freedom
  def initialize
    @ring = []
  end
  def ring(arg)
    arg.put_a_ring_on_it
    return @ring.push(arg)
  end
end

class Nation
  def creed
    return "all men are created equal"
  end
  def rise_up?
    return true
  end
  def self.join_hands(a, b)
  
  end
  def judge_by(judge)
    if judge == :character
      return true
    end
  end
end


