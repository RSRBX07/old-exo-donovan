require_relative './plane.rb'

class Jet < Plane

  def self.builded
    all_builded = super
    
  end

  def acceleration amount
    super(amount* 2)
  end
end

jet = Jet.new
jet_2 = Jet.new
boing = Plane.new
puts Vehicle.builded.inspect