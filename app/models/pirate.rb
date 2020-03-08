class Pirate
    attr_reader :name, :height, :weight

    @@all = []

    def initialize(args)
        @name = args[:name]
        @height = args[:height]
        @weight = args[:weight]
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all = []
    end
end