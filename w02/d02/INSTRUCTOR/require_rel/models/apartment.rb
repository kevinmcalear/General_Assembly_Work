class Apartment
  def initialize(name)
    @name = name
  end

  def name
    return @name
  end

  def to_s
    return "This apartment is named #{name}"
  end
end