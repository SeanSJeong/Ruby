# kind_of? and is_a?
if preparer.kind_of?(Mechanic)
    preparer.prepare_bicycles(bicycle)
  elsif preparer.kind_of?(TripCoordinator)
    preparer.buy_food(customers)
  elsif preparer.kind_of?(Driver)
    preparer.gas_up(vehicle)
    preparer.fill_water_tank(vehicle)
  end
  
  # responds_to?
  if preparer.responds_to?(:prepare_bicycles)
    preparer.prepare_bicycles(bicycle)
  elsif preparer.responds_to?(:buy_food)
    preparer.buy_food(customers)
  elsif preparer.responds_to?(:gas_up)
    preparer.gas_up(vehicle)
    preparer.fill_water_tank(vehicle)
  end
  