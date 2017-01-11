#----- Methods ----------
def roll (cheating, value)
    if cheating && rand(1..100) < 80
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

#-----Application--------
#1. Afficher le résultat du tirage d'un dé à 6 faces
print "Combien de tirages voulez vous faire? : "
nb_try = gets.to_i

results = Array.new()
somme = 0;

# faire les lancers
(0..nb_try-1).each do |i|
    results.push roll true, 6
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
proba = Array.new()
for i in 1..6
    amount = 0
    while results[amount] == i
        amount += 1
    end
    percent = (amount * 100)/nb_try
    proba.push(percent)
end

proba.each do |value|
    print " #{value} "
end
