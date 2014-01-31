  class WDI_student
    def initialize(name)
      @name = name 
      @energy = 100
      @smarts = 0
    end

    def name
      return @name
    end

    def energy
      return @energy
    end

    def smarts
      return @smarts
    end

    def break
      @energy = 100
    end

    def code
      if energy == 0
        return smarts
      end
    else
      @energy_level = 0
      @smarts += 1

    end
  end