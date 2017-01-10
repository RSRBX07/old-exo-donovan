

#Exercice 9 : PGCD de deux nombres entiers
puts "Entrez deux nombres :"
fnb = gets.to_i
snb = gets.to_i
aryFnb = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
arySnb = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

i = 0
for d in 1..fnb
	div = fnb % d
	if div == 0
		aryFnb [i] = d
		i += 1
	end
end

j = 0
for d in 1..snb
	div = snb % d
	if div == 0
		arySnb [j] = d
		j += 1
	end
end

PGCD = 0
for c in 0..i
	for d in 0..j
		if aryFnb [c] == arySnb [d] && aryFnb != 0
			PGCD == aryFnb [c]
		end
	end	
end

puts "Le PGCD de #{fnb} et #{snb} vaut #{PGCD}"	