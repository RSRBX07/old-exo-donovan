class Vehicle
  attr_reader :position
  attr_reader :out_of_order
  attr_reader :speed

  def initialize
    @position = :Roubaix
    @out_of_order = false
    @speed = 0
  end

  def move destination
    @position = destination
  end

  def acceleration amount
    @speed += amount
  end
end

    