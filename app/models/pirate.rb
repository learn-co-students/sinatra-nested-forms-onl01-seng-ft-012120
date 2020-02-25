class Pirate
  attr_accessor :name, :weight, :height
  @@all = []

  def initialize(name:, weight:, height:)
    self.name = name
    self.weight =  weight
    self.height = height
    @@all << self
  end

  def self.all 
    @@all
  end

  def self.clear
    @@all = []
  end

end