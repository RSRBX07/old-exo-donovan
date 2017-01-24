class Vehicle
  attr_reader :position
  attr_reader :out_of_order

  def initialize
    puts "Im starting initialization my instance"
    @out_of_order = false
    puts "Im finishing initialization my instance"
  end


  def move(destination)
    @position = destination
  end

  

end
