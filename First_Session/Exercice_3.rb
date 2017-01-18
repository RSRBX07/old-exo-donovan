#Exercice premier à 100!
n = 0
somme = 0
while somme < 100 
	n += 1
	somme = somme + n
end
puts "Il faut #{n} cycles de sommes pour arriver à 100."

somme = 0
for i in 1..100
	somme += i
end
puts "La somme de 100 entiers consécutifs de 1 à 100 vaut #{somme}."

#Exercice Chifflres suivants
print "Entrez un nombre : "
a = gets.to_i

for i in a+1..a+10
	puts i
end

#Exercice Table multiplication
print "Entrez un nombre : "
a = gets.to_i
resultat = 0
puts "Table de #{a}"

for i in 1..10
	resultat = a*i
	puts "#{a} x #{i} = #{resultat}"
end

#Exercice somme consécutive relative
print "Entrez un nombre : "
a = gets.to_i
somme = 0
for i in 1..a
	somme += i
end
puts "La somme de #{a} entiers consécutifs de 1 à #{a} vaut #{somme}."

#Exercice factorielle
print "Entrez un nombre : "
a = gets.to_i
resultat = 1

for i in 1..a
	resultat = resultat * i
end
puts "La factorielle de #{a} vaut #{resultat}."

#Exercice dessin
draw = "X"
drawSize = 5
for i in 1..drawSize
	puts draw
	draw = "O" + draw
end
