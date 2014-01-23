class Nation
  def initialize 
  end
  
  def creed
    return "all men are created equal"
  end
 
 def rise_up?
  return true
 end

  def nation
    nation = @nation
  end
end

#------> State ------

class State
  def initialize(name)
    @name = name
    @people = [ { :ancestors => "slaves" }, { :ancestors => "slave-owners"} ]
    @table_of_brotherhood = []
    @sons_of_former_slaves = [ {:ancestors=>"slaves"} ]
    @status = status
  end


def name
  return ""
end

def status
  return ""
  end

  def emancipate
  end



def table_of_brotherhood
  return @table_of_brotherhood
end

# #   
def sit_at_table(sons)
 return @table_of_brotherhood = sons
  end

#  def sit_at_table
# #  return @sons
#   end


# def sit_at_table
# end

def people
  if @people.count > 0
    return @people
  end
end

end

#------> Freedom ------

class Freedom
end
