class Pirate
    attr_accessor :name, :weight, :height
    @@all = []
    def initialize(name, weight, height)
        @name = name
        @height = height
        @weight = weight
        @@all << self
    end

    def self.all
        @@all
    end

end