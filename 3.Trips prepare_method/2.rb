class Trip
    attr_reader :bicycles, :customers, :vehicle
  
    def prepare(prepares)
      prepares.each {|prepare|
      case prepare
      when Mechanic
        preparer.prepare_bicycles(bicycles)
      when TripCoordinator
        preparer.buy_food(customers)
      when Driver
        preparer.gas_up(vihicle)
        preparer.fill_water_tank(vehicle)
      end
      }
    end
  end
  
  # when you introduce TripCoordinator and Driver
  class TripCoordinator 
    def buy_food(customers)
      # ...
    end
  end
  
  class Driver  
    def gas_up(vehicle)
      #...
    end
  
    def fill_water_tank(vehicle)
      #...
    end
  end