class Dice
    
    def roll (value, percent)
        return value if value && rand(1..100) < percent # => Structure intéressante!
        return rand(1..6)
    end

end













# #-----Application--------
# #Tirage d'un dé à 6 faces

# # paramètres-------
#     cheat_dice_value = 6 # if 0 => Cheating = false
#     cheat_dice_percent_chance = 60
# #------------------

# print "Combien de tirages voulez vous faire? : "
# nb_try = gets.to_i

# results = []
# dice = Dice.new

# # faire les lancers
# (0..nb_try-1).each do |i|
#     results.push dice.roll cheat_dice_value,cheat_dice_percent_chance
# end

# #Afficher résultats
# meta_hash = { 
#     "Nom" => "Poulpinou",
#     "Age" => 1524,
#     "Lancers" => results
# }

# puts "#{meta_hash["Nom"]} agé de #{meta_hash["Age"]} ans a fait les lancer suivants : #{meta_hash["Lancers"]}"


