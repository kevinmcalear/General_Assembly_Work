class Student

  def initialize(name)
    @name = name
    @knowledge = 0
    @energy = 100
    @wisdom = []
  end

  def name
    @name
  end

  def knowledge
    @knowledge
  end

  def energy
   @energy
  end

  def wisdom
    @wisdom
  end

  def code
    if @energy == 100
    @wisdom << "increased"
    @energy = 0
    end
  end

  def take_a_break
    @energy = 100
  end

end

