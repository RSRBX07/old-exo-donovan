class Vehicle
  attr_reader :position

  def initialize
    @position = "Roubaix"
  end

  def move destination
    @postion = destination
  end
end