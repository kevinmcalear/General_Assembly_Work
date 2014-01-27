class State
  def initialize(name)
    @name = name.to_s
    @people = [{:ancestors => "slaves"}, {:ancestors => "slave-owners"}]
    @table_of_brotherhood = []
    @sons_of_former_slaves = sons_of_former_slaves
  end
  
  def name
    return ""
  end

  def people
    if @people.count > 0
      return @people
    end
  end

    def table_of_brotherhood
      return @table_of_brotherhood
  end

  def sit_at_table(sons)
  end

  def sons_of_former_slaves
  end
end

class Freedom
  def initialize
  end
end

class Nation
  def initialize
  end

 def creed
    return "all men are created equal"
  end

  def rise_up?
    return true
  end
end







