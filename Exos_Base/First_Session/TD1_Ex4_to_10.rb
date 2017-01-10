paragraphe = "-------------------------------------------------------------------------"
puts paragraphe

# TD1 exercice 4
stop = false
print "Combien de nombres dans le tableau? : "
N = gets.to_i
print "Quelle valeur minimum? : "
min = gets.to_i
print "Quelle valeur maximum? : "
max = gets.to_i

tab = Array.new()
for i in 0..N-1
	r = rand min..max
	tab.push(r)
end

while stop == false
	nextry = "empty"
	nbOcc = 0
	print "Afficher les occurences de quel chiffre? : "
	x = gets.to_i
	tab.each do |value|
		if value == x
			nbOcc += 1
		end
	end
	puts "Le chiffre #{x} apparait #{nbOcc} fois dans le tableau"
	
	print "Réessayer? ( o / n ) : "
	while nextry != "o" && nextry != "n"
		nextry = gets.chomp
	end
	if nextry == "n"
		stop = true
	end
end

puts paragraphe
# TD1 exercice 5 et 10
puts tab.inspect
tab = tab.sort
puts "La valeur minimum du tableau est #{tab[0]}"
tab = tab.reverse
puts "La valeur maximum du tableau est #{tab[0]}"

puts paragraphe
# TD1 exercice 6
tab = tab.sort
puts "Supprimer quelle valeur? : "
x = gets.to_i
tab = tab - [x]
puts tab.inspect

puts paragraphe
# TD1 exercice 7 et 8
i = 0
stop = false
puts "Ajouter quelle valeur dans le tableau? (dans l'ordre croissant) : "
x = gets.to_i

while stop == false
	if x > tab[i]
		i += 1
	else
		tab.insert(i,x)
		stop = true
	end
end	

puts tab.inspect














gets