class Nation

  def creed
    return "all men are created equal"
  end

  def rise_up?
    return true
  end

  def judge_by(arg)
  end

end

class State
  def initialize(name)
    @name = name
    @emancipate = "a state sweltering with the heat of injustice and oppression"
    @table_of_brotherhood = []
  end

  def name
    return "name"
  end

  def people
    [1]
    [{:ancestors => "slaves"}, {:ancestors => "slave-owners"}]
  end

  def sit_at_table(person_array)
    @table_of_brotherhood << {:ancestors => "slaves"}
  end

  def table_of_brotherhood
    @table_of_brotherhood 
  end

  def status
    @emancipate
  end

  def emancipate
    @emancipate = "an oasis of freedom and justice"
  end

end