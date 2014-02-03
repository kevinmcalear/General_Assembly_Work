class WDI_Student
  def initialize(nickname)
    @nickname = nickname
    @amount_of_knowledge = 0
    @tired = false
  end

  def nickname
    @nickname
  end

  def amount_of_knowledge
    @amount_of_knowledge
  end

  def tired?
    @tired
  end

  def code
    if @tired != true
      @amount_of_knowledge += rand()
      @tired = true
    end
  end

  def take_a_break
    @tired = false
  end

end