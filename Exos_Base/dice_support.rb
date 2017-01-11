
#----- Methods ----------
def roll (cheating, value, percent)
    if cheating && rand(1..100) < percent
        return value
    else
        return rand(1..6)
    end
end

def print_results (sort_or_not, tab)
    if sort_or_not
        tab = tab.sort
        print "\nLes résultats triés sont : "
    else
        print "Les résultats des lancers sont : "
    end
    tab.each do |value|
    print " #{value} "
    end
end

def create_proba_tab (tab, nb_try)
    tab = tab.sort
    temp_tab = []
    actual_nb = 0
    actual_value = 0

    tab.each do |value|
        if value == actual_nb
            actual_value += 1
        else
            temp_tab.push((actual_value * 100) / nb_try) #erreur dans le calcul du pourcentage... A revoir
            actual_nb += 1
            actual_value = 0
        end
    end
    return temp_tab
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

#calculer et afficher le moyenne
moy = (somme.to_f)/(nb_try.to_f)
puts "\nLe résulat moyen des lancers vaut : #{moy}"

#calcul des proba
puts "#{create_proba_tab results,nb_try}"
