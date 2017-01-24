# tirage de 2 des a 6 faces
dices_values = [ rand(1..6),rand(1..6)]
puts dices_values
puts dices_values.inspect
case dices_values[0] + dices_values[1]
# si somme = 3 gagne
when 3
  puts "gagne"
# si somme = 12 rejouer
when 12
  puts "rejouer"
# sinon perdu
else
  puts "perdu"
end