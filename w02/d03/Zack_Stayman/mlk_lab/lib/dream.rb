require 'pry'


class Nation
  def creed
    return "all men are created equal"
  end
  def rise_up?
    return true
  end
  def self.join_hands(white_children, black_children)
  end
  def judge_by(argument)
    if argument.to_sym == :color
      return false
    elsif argument.to_sym == :character
      return true
    end
  end
end


class State
  def initialize(name)
    @name = name
    @table_of_brotherhood = []
    @status = "a state sweltering with the heat of injustice and oppression"
    @ring = false
  end
  def name
    return @name
  end
  def people
    @people = [{ancestors: "slaves", age: 2, color: "black"}, {ancestors: "slave-owners", age: 4, color: "white"}]
  end
  def table_of_brotherhood
    return @table_of_brotherhood
  end
  # binding.pry
  def sit_at_table(argument)
    @table_of_brotherhood = argument
  end
  def status
    return @status
  end
  def emancipate
    @status = "an oasis of freedom and justice"
    return @status
  end
  def ringing?
    return @ring
  end
  def ring
    @ring = true
  end
end


class Freedom
  def ring(argument)
      argument.ring
      ring = []
      ring << argument
      return ring
  end
end