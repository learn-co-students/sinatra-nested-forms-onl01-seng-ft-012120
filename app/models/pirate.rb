class Pirate

    attr_accessor :name, :weight, :height

    PIRATES = []

    def initialize (params)
        @name = params[:pirate][:name]
        @weight = params[:pirate][:weight]
        @height = params[:pirate][:height]
        PIRATES << self
        self
    end

    def self.all 
        PIRATES
    end
end