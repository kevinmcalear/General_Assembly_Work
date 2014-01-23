
#The Dream
class Nation
  def creed
    return "all men are created equal"
  end 

  def rise_up?
    return true
  end

  def join_hands(a, b)
    puts a.merge(b)
  end

  def judge_by(judgeable)
    if judgeable == :character
      return true
    else
      return false
    end
  end
end

class State
  def initialize(name)
    @name = name
    @table_of_brotherhood = []
  end

  def name
    return @name
  end

  def people
    @people = [{:ancestors => "slaves", :age => 14, :color => "white"}, {:ancestors => "slave-owners", :age => 13, :color => "black"}]
  end

  def table_of_brotherhood
    return @table_of_brotherhood
  end

  def sit_at_table(people_sitting)
    @table_of_brotherhood.push(people_sitting)
  end

  def status
    return "a state sweltering with the heat of injustice and oppression"
  end

  def emancipate
    self.status == "an oasis of freedom and justice"
  end

  def ringing?
    if $ringers.include?(name)
      return true
    else
      return false
    end
  end

end

class Freedom
  def initialize
    $ringers = []
  end

  def ring(state)
    $ringers.push(state)
  end

end

