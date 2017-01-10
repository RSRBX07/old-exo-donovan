
puts "Combien de poussins la poule doit-elle avoir?"
nb_poussins = gets.to_i
order = Array.new

part_1 = "Ma poul' n'a plus que #{nb_poussins} poussins\n"
part_2 = "Elle en avait #{nb_poussins + 1}.\n"
part_3 =  "Allongeons la jambe,"
part_4 =  "\n #{part_3} la jambe\nCar la route est longue.\n\n"

order.push(part_1, part_1, part_2, part_3, part_4, part_4)

(0..nb_poussins).each do 
    order.each do |i| 
        print i
    end
end