class Nation

  def initialize

    white_children = { ancestors: "slave-owners", age: 14}
    black_children = { ancestors: "slaves", age: 13}
    @join_hands = [white_children, black_children]

  end

  def rise_up?
    true
  end



  def creed
    "all men are created equal"
  end 

  def judge_by(what)
    if what == :character
      true
    else
      false
    end
  end
end


class State

  def initialize(name)
     @name = name
     @boys_and_girls = []
         people1 = {ancestors: "slaves",
      color: "black", age: 14}
      people2 = {ancestors: "slave-owners", color: "white", age: 13}
      @people = [people1, people2]
      @status = "a state sweltering with the heat of injustice and oppression"
      @table_of_brotherhood = []
      @ring = false
      @table = []
  end

  def table_of_brotherhood=(sit_at_table)
     #@table_of_brotherhood = []
     @table_of_brotherhood = sit_at_table
  end

  def table_of_brotherhood
    return @table
  end

  def sit_at_table(person_array)
    person_array.each do |person| 
      @table << person
    end

  end

  def name
    return @name
  end

  def status
    return @status
  end



  def people
    return @people
  end

    def sit_at_table(sons_of_former_slaves)

    end


  def ringing?
   
  
  end

  def emancipate
  @status = "an oasis of freedom and justice" 
  end


end

class Freedom

  def initialize
    @ring = []
  end

  def ring(name)
    return @ring =  [name]
  end


end

