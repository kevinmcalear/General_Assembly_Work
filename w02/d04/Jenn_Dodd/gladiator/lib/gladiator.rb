require 'pry'

class Gladiator
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
    @gladiators = []
  end

  def name
    return @name.capitalize
  end

  def gladiators
    return @gladiators
  end

  def add_gladiator(gladiator)
    if gladiators.count >= 2
      return "Only two gladiators go in. Only one comes out."
    else
      gladiators.push(gladiator)
    end
  end
  def ready?
    if gladiators.count == 2
      return true
    end
  end

  def fight(gladiator_one, gladiator_two)
    beats = {
      "trident" => "spear",
      "spear" => "club",
      "club" => "trident"
    }
    if self.ready?
      if beats[gladiator_two.weapon] == gladiator_one.weapon
        puts "#{gladiators[0].name} wins! #{gladiators[1].name} is dead."
        self.gladiators.delete(gladiator_two)
      elsif gladiator_one.weapon == gladiator_two.weapon
        puts "Both gladiators are dead!"
        self.gladiators.delete(gladiator_two)
        self.gladiators.delete(gladiator_one)
      else
        puts "#{gladiators[1].name} wins! #{gladiators[0].name} is dead."
        self.gladiators.delete(gladiator_two)
      end
    else
      return "You need two gladiators to fight!"
    end
  end

end


poseidon = Gladiator.new("Poseidon", "trident")
aries = Gladiator.new("Aries", "spear")

olympus = Arena.new("Olympus")

olympus.add_gladiator(poseidon)
olympus.add_gladiator(aries)

puts olympus.gladiators.count

olympus.gladiators.delete(poseidon)
puts olympus.gladiators.count
olympus.gladiators.delete(aries)
puts olympus.gladiators.count

olympus.add_gladiator(poseidon)
olympus.add_gladiator(aries)
puts olympus.gladiators.count

olympus.fight(poseidon, aries)
puts olympus.gladiators.count




