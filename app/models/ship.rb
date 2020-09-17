class Ship
    attr_accessor :name, :booty, :type
    @@all = []
  
    def initialize(args)
      @name = args[:name]
      @type = args[:type]
      @booty = args[:booty]
      self.class.all << self
    end
  
    def self.all
      @@all
    end
  
    def self.clear
      self.all.clear
    end
end