class State
  def initialize(name)
    @table = []
  end

  def name
    ""
  end

  def people
    [{:ancestors => "slaves"},{:ancestors => "slave-owners"}]
  end

  def table_of_brotherhood
    @table
  end

  def sit_at_table(brothers)
    
  end
end

class Freedom
end

class Nation
  def creed
    "all men are created equal"
  end

  def rise_up?
    true
  end
end
