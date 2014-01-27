# require 'pry'

class Gladiator

  def initialize(weapon)
    first_name = ["Maximilliam","Crixus","Flamma","Commodus","Spartacus"]
    last_name = ["Smith","Jones","Brown","Washington","Williams"]
    # weapon = ["Trident","Spear","Club"]

    @first_name = first_name.sample
    @last_name = last_name.sample
    @weapon = weapon
  end 

  def first_name
    return @first_name
  end

  def last_name
    return @last_name
  end

  def weapon
    return @weapon
  end

end 

class Arena
  def initialize(name)
    @name = name.capitalize
    @gladiator = []
  end 

  def name
    return @name
  end 

  def gladiator
    return @gladiator
  end

  def add_gladiator
    weapon = ["Trident","Spear","Club"].sample


    if @gladiator.size <2
      @gladiator.push(Gladiator.new(weapon) )
    else "You already have two"
    end 
  end

  def fight(gladiator_1, gladiator_2)
    beats = {
      "Trident" => "Spear",
      "Spear" => "Club",
      "Club" => "Trident"
    }

    if @gladiator.size == 2
      puts "Let's get ready to rumble!"
      
      if gladiator_2.weapon == beats[gladiator_1.weapon]
        return "Gladiator 1 Wins!"  
      elsif gladiator_1.weapon == gladiator_2.weapon
        return "Both Gladiators Died!"
      else "Gladiator 2 Wins!"  
      end
  
    else 
      return "You must have two gladiators to fight!"
    end 
  end 
end 

# arena = Arena.new("Arena")
# glad2 = Gladiator.new("Spear")
# glad3 = Gladiator.new("Club")

# arena.gladiator.push(glad2)
# arena.gladiator.push(glad3)


# arena.fight(glad2, glad3)


# binding.pry
