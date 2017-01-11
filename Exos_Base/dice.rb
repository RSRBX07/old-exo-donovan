#----- Methods ----------
def roll (cheating, value, percent)
    if cheating && rand(1..100) < percent
        return value
    else
        return rand(1..6)
    end
end


#-----Application--------
#Tirage d'un dé à 6 faces

# paramètres-------
cheat_dice = true
cheat_dice_value = 6
cheat_dice_percent_chance = 60
#------------------

print "Combien de tirages voulez vous faire? : "
nb_try = gets.to_i

results = Array.new()
somme = 0;

# faire les lancers
(0..nb_try-1).each do |i|
    results.push roll cheat_dice, cheat_dice_value, cheat_dice_percent_chance
    somme += results[i]
end
 
 #afficher les résultats non triés
print_results false, results

#afficher les résultats triés
print_results true, results


