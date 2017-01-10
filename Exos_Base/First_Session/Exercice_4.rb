qs

# Exercice 10
biggest = 0
stop = false
while stop == false
	print  "Entrez un nombre : "
	input = gets.to_i
	if input >= biggest
		biggest = input
	elsif input == 0
		stop = true
	end
end
puts "Le plus grand nombre entré vaut #{biggest}"

puts paragraphe
# Exercice 11
puts "Entrez le prix de vos articles"
somme = 0
stop = false
while stop == false
	input = gets.to_i
	somme += input
	if input == 0
		stop = true
	end
end
puts "Vous devez payer #{somme} euros"
while input < somme
	puts "Combien donnez vous?"
	input = gets.to_i
end
puts "A rendre : #{input - somme} euros"

rest = input - somme
mod = rest % 10
d = (rest - mod) / 10
rest = mod
mod = rest % 5
c = (rest - mod) / 5

puts "Retour : #{d}x billets de 10euros, #{c}x billets de 5euros, #{mod}x pieces de 1euro."

puts paragraphe
# Exercice 12
puts "Entrez le nombre de chevaux partants"
n = gets.to_i
puts "Entrez le nombre de chevaux joués"
p = gets.to_i
fn = 1
fp = 1
np = n-p
fnp = 1

for i in 1..n
	fn = fn * i
end

for i in 1..p
	fp = fp * i
end

for i in 1..np
	fnp = fnp * 1
end

X = fn / fnp
Y = fn / ( fp * fnp )

puts "Vous avez une chance sur #{X} chances de gagner des l'ordre"
puts "Vous avez une chance sur #{Y} chances de gagner dans le désordre"