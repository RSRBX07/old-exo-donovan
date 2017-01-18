require_relative './vehicle.rb'

class Firetruck < Vehicle
  attr_reader :water_capacity
  attr_reader :water_stock

  def initialize initial_fill
    super
    @water_capacity = 4000
    initial_fill = @water_capacity if initial_fill > @water_capacity
    initial_fill = 0 if initial_fill < 0
    @water_stock = initial_fill
  end

  def throw_water power
    if (@water_stock -= power)>0
      @water_stock -= power 
    else
      puts "Le camion est vide"
    end
  end

  def refil amount
    water_stock = water_capacity if (water_stock + amount) > water_capacity
    water_stock += amount
  end

end