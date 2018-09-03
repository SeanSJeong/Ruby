class Bicycle
    attr_reader :size  # <- promoted from RoadBike
  
    def initialize(args={})
     @size = args[:size] # <- promoted from RoadBike
    end
  end
  
  class RoadBike < Bicycle  
    attr_reader :tape_color
  
    def initialize(args)
      @tape_color = args[:tape_color]
      super(args) # <- RoadBike now MUST send 'super'
    end
  end