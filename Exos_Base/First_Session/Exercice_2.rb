
#Exercice impôt Zorglub
print "Entrez le nom de votre zorglubien : "
nomZ = gets.chomp
print "Entrez l'âge de votre zorglubien : "
ageZ = gets.to_i
print "Entrez le sexe de votre zorglubien ( m / f ) : "
sexeZ = gets.chomp

while sexeZ != "m" && sexeZ != "f"
	puts "Erreur : #{nomZ} n'est vraisemblablement pas de ce sexe..."
	print "Entrez le sexe de votre zorglubien ( m / f ) : "
	sexeZ = gets.chomp
end

if ageZ > 20 && sexeZ == "m"
	puts "#{nomZ} le zorglubien est imposable"
		elsif ageZ > 18 && ageZ < 35 && sexeZ == "f"
			puts "#{nomZ} la zorglubienne est imposable"
		else
			puts "#{nomZ} n'est pas imposable"
end

#Exercice nombre entre 10 et 20
print "Entrez un nombre entre 10 et 20. Ou pas! : " 
nb = gets.to_i

while nb < 10 || nb > 20

	if nb < 10
		puts "Plus grand!"
	else
		puts "Plus petit!"
	end
	
	print "Réessayez : "
	nb = gets.to_i
end
puts "Bravo!"
