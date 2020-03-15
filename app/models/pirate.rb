class Pirate

    attr_reader :name, :weight, :height
    
    def initialize(params)
        @name = params[:name]
        @weight = params[:weight]
        @height = params[:height]
    end

end