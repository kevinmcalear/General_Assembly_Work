class WDI_Student

  attr_reader :nickname, :energy, :knowledge

  def initialize(nickname)
    @nickname = nickname
    @energy = "full"
    @knowledge = 0
  end

  def code
    if @energy != "tired"
      @knowledge += 1 
      @energy = "tired" unless @plan
      @plan = false
    end
  end

  def break
    @energy = "full"
  end

  def plan
    @plan = true
  end

end
