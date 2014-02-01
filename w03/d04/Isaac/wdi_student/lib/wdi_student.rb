# # WDI Student Rspec

# ### Prompt

# A student has a nickname, amount of knowledge, and whether they are tired or not. A student starts with a name, 0 knowledge, and full of energy (not tired). A student can choose to either code or take a break. Coding increases your knowledge, but it makes you tired. Coding also does not increase your knowledge if you are tired to begin with. If you take a break, you won't be tired anymore :)

# ### Bonus

# If you plan right before you code, you can code twice in a row without getting tired.

class Student
  def initialize(name)
    @name = name
    @knowledge = 0
    @tired = false
  end
  def name
    return @name
  end
  def knowledge
    return @knowledge
  end
  def tired?
    return @tired
  end
  def code
    if tired? == false
      @knowledge += 1
      @tired = true
    else 
      return "I'm too tired to code!"
    end
  end
  def take_break
    @tired = false
  end
end













