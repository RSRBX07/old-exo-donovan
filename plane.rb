class Plane < vehicle
  attr_reader :is_flying

  def initialize
    @is_flying = false
  end

  def land 
    @is_flying = false
  end

  def take_off
    @is_flying = true
  end
end