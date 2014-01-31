class WDIStudent
  def initialize(name)
    @name = name
    @tired = false
    @knowledge = []
    @code_count = 0
  end

  def name
    return @name
  end

  def tired?
    return @tired
  end

  def knowledge
    return @knowledge
  end

  def code_count
    return @code_count
  end

  def break
    @tired = false
  end

  def make_tired
    @tired = true
  end

  def code
    if !tired?
      self.knowledge << "knowledge"
      self.make_tired
    else
    end
  end


end