class Nation

  def initialize 
    @creed = creed
  end

  def creed
    return "all men are created equal"
  end

  def rise_up?
    return true
  end

  def self.join_hands(white, black)
  end

  def judge_by(color)
    if color == :color
      return false
    elsif color == :character
      return true
    end
  end
        
end

class State
  
  def initialize(name)
    @name = name
    @people = [{:age => 14, :color => "black", :ancestors => "slaves"}, {:age => 13, :color => "white", :ancestors => "slave-owners"}]
    @table_of_brotherhood = []
    @sons_of_former_slaves = []
    @sons_of_former_slave_owners = []
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


  def sit_at_table(name)
    return @table_of_brotherhood = @people
  end

  def status
    return @status
  end

  def ringing?
    return false
  end


  def emancipate 
    @status = "an oasis of freedom and justice"
    return @status
  end



end

class Freedom
  def initialize()
    @ring = []
  end


  def ring(state)
    return @ring.push(state)
  end


  def ringing?(state)
    state = true
  end

end