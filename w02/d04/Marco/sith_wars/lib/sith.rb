class Sith

  def initialize(name, weapon)
    @name = name
    @weapon = weapon
  end

  def name
    return @name
  end

  def weapon
    return @weapon
  end

end



class Arena
  def initialize(name)
    @name = name
    @siths_on_deck = []
  end

  def name 
    return @name.capitalize
  end

  # def sith_index(sith)
  #   return @siths_on_deck.index[sith]
  # end

  def siths_on_deck
    @siths_on_deck.length <= 2
    return @siths_on_deck
  end

  def add_sith_lord(sith)
    return @siths_on_deck.push(sith)
  end

  def sith_fight(sith1, sith2)

  if siths_on_deck == 2
    winning_weapons = {
      "lightsaber" => "forcepush",
      "forcepush" => "forcelightning",
      "forcelightning" => "lightsaber"
    }

    if winning_weapons[sith1][weapon] == sith2[weapon]
      return "#{sith2[name]} is victorious! Hail the Dark Side!"
    else
      return "#{sith1[name]} is victorious! The Dark Side reigns supreme!"
    end
  end
end
end




