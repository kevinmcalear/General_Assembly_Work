class Student
  def initialize(name)
    @name = name
    @knowledge = 0
    @tired = false
  end

  def name
    @name
  end

  def knowledge
    @knowledge
  end

  def tired
    @tired
  end

  def code
    @code = true
    @knowledge += 1
  end

  def break
    @code = false
  end

end