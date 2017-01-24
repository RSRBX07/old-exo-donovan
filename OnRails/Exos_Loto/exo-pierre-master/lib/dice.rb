class Dice
   # roll est une methode d'instance de Dice
  def roll(cheated_value = nil)
    cheated_value || (1..6).to_a.sample
  end 
end
