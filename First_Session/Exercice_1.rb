paragraphe = "-------------------------------------------------------------------------------"
puts paragraphe

# Exercice âge
print "Ecrire votre âge : "
age = gets.to_i
print "Vous avez #{age} ans,"
if age >= 18
	puts " vous êtes majeur."
else
	puts " vous êtes mineur."
end

puts paragraphe
# Exercice carré
print "Entrez un nombre : "
input = gets.to_i
output = input*input
puts "Son carré vaut : #{output}"

puts paragraphe
# Exercice TVA
print "Entrez un prix : "
inputPrix = gets.to_i
print "Entrez une quantité : "
inputQuantity = gets.to_i
outputPrix = inputPrix + inputPrix*0.20
outputPrix = outputPrix * inputQuantity
puts "Prix TTC = #{outputPrix}"

puts paragraphe
#Exercice positif/négatif
print "Entrez un nombre : "
inputNum = gets.to_i
if inputNum > 0
	puts "Ce nombre est positif."
	else if inputNum < 0
		puts "Ce nombre est négatif."
		else if inputNum == 0
			puts "Ce nombre vaut 0."
		end 
	end 
end

puts paragraphe
#Exercice signe multiplication
print "Entrez le premier nombre : "
a = gets.to_i
print "Entrez le deuxième nombre : "
b = gets.to_i
if a == 0 || b == 0
	puts "Le résultat sera nul."
	else if (a > 0 && b > 0) || (a < 0 && b < 0) 
		puts "Le résultat sera positif."
		else
			puts "Le résultat sera négatif."
	end 
end 

puts paragraphe
#Exercice Noms
print "Entrez successivement trois noms : "
fName = gets.to_s
sName = gets.to_s
tName = gets.to_s
if fName < sName && sName < tName
	puts "Les noms sont dans l'ordre alphabétique."
else
	puts "Les noms ne sont pas dans l'ordre alphabétique."
end

puts paragraphe
#Exercice age enfant
print "Entrez l'âge de l'enfant : "
ageKid = gets.to_i
if ageKid == 6 || ageKid == 7
	puts "Il est Poussin."
	else if ageKid == 8 || ageKid == 9
		puts "Il est Pupille"
		else if ageKid == 10 || ageKid == 11
			puts "Il est Minime"
			else if ageKid == 12
				puts "Il est Cadet"
				else 
					puts "Il est hors catégorie"
			end 
		end 
	end 
end

puts paragraphe
#Exercice photocopie
print "Entrez le nombre de copies désirées : "
nbCopies = gets.to_i
prixCopies = 0
if nbCopies < 10 && nbCopies > 0
	prixCopies = nbCopies * 0.1
	elsif nbCopies < 20 && nbCopies > 10
		prixCopies = 10 * 0.1 + (nbCopies - 10) * 0.09 
	elsif nbCopies > 20
		prixCopies = 10 * 0.1 + 20 * 0.9 + (nbCopies - 20) * 0.08
	else
		puts "Entrée erronée"
end
puts "#{nbCopies} copies vous coûteront #{prixCopies} euros."