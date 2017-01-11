#----- Methods ----------
def roll
    return Random.rand(1..6)
end

#-----Application--------
#1. Afficher le résultat du tirage d'un dé à 6 faces
print "Combien de tirages voulez vous faire? : "
nb_try = gets.to_i

results = Array.new()
somme = 0;

# faire les lancers
for i in 0..nb_try-1
    randice = roll
    results.push randice 
    somme += randice
end
 
 #afficher les résultats non triés
print "Les résultats des lancers sont : "
results.each do |value|
    print " #{value} "
end

#afficher les résultats triés
print "\nLes résultats triés sont : "
results = results.sort
results.each do |value|
    print " #{value} "
end

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
