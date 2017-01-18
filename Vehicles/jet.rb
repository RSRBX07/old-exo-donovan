require_relative './plane.rb'

class Jet < Plane

  def acceleration amount
    super(amount* 2)
  end
end

jet = Jet.new
puts jet.speed
jet.acceleration 4
puts jet.speed