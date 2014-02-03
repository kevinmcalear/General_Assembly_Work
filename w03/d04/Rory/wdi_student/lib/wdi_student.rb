class Student
  #A student has a nickname, amount of knowledge, and whether they are tired or not.
  #A student starts with a name, 0 knowledge, and full of energy (not tired)
  def initialize(name)
    @name = name
    @energy_level = 100
    @smarts = 0
  end

  def name
    @name
  end

  def energy_level
    return @energy_level
  end

  def smarts
    return @smarts
  end

  def break
    @energy_level = 100
  end

  def code
    if energy_level == 100
      @energy_level = 0
      @smarts += 1
    end
  end
end
  #A student can choose to either code or take a break. 

  #def self.code
#Coding also does not increase your knowledge if you are tired to begin with.
    #if @tired == true
     # puts "No more coding allowed"
    #else
      #Coding increases your knowledge, but it makes you tired. 
      #@knowledge += 1
     # tired = true
    #end
  #end
#If you take a break, you won't be tired anymore :)
  #def self.break
   # tried = false
  #end