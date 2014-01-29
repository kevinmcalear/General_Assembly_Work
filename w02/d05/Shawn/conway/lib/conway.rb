class Game
    def initialize(name, initial_configuration)
        @name = name
        @initial_configuration = Array.new(2, [])
    end


    def name
        return @name
    end

    def initial_configuration
        return @initial_configuration
    end

end