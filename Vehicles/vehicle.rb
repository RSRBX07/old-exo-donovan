class Vehicle
  
  attr_reader :position
  attr_reader :out_of_order
  attr_reader :speed


  def self.new
    self.add_type self
    super
  end

  def self.add_type vehicle
    @@builded ||= []
    @@builded.push vehicle if !@@builded.include?(vehicle)
  end

  def self.builded
    return @@builded
  end

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

    