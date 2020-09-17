class Pirate
  attr_accessor :name, :weight, :height
  @@all = []

  def initialize(args)
    @name = args[:name]
    @weight = args[:weight]
    @height = args[:height]
    self.class.all << self
  end

  def self.all
    @@all
  end
end
