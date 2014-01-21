class Building
  def initialize(name)
    @name = name
  end

  def name
    return @name
  end

  def to_s
    return "This building is named #{name}"
  end
end