class Pirate

    @all = []

    def initialize(name, height, weight)
        @name = name
        @height = height
        @weight = weight
        @all << self
    end
end