class Student

  def initialize(nickname)
    @nickname = nickname
    @knowledge = 0
    @energy = 100
  end

  def nickname
    return @nickname
  end

  def knowledge
    return @knowledge
  end

  def energy
    return @energy
  end

  def code
  if @energy == 100
     @energy = 0
     @knowledge += 1
   end
  end

  def break
    return @energy = 100
  end

end

