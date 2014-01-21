class Shelter
  def initialize (name)
    @name = name
    @animal = []
    @client =[]
    @adopt = adopt
  end

  def name
    return @name
  end

  def client
    return @client
  end

  def animal
    return @animal
  end

  def adopt
    return @adopt
  end
end

