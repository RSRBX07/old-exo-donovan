#TD1 exercice 3
values = Array.new()
i = 0
somme = 0
div = 0

puts "Entrez une série de nombres et terminez par 0 : "
input = 1
while input != 0
	input = gets.to_i
	values.push(input)
end

values = values.sort.reverse

if values[i] > 0
	while values[i] > 0
		somme += values[i]
		div += 1
		i += 1
	end
	VMEP = somme / div
	somme = 0
	div = 0
end

if values[i] == 0
	i += 1
end

if values[i] < 0 && i != values.size
	while i != values.size
		somme += values[i]
		div += 1
		i += 1
	end
	VMEN = somme / div
end

puts "La valeur moyenne des entiers positifs vaut #{VMEP}"
puts "La valeur moyenne des entiers negatifs vaut #{VMEN}"
puts "Il y a 1 valeur nulles"

gets
