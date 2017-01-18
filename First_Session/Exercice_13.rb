#Exercice 13
votes = Array.new([0])
n = 0
tot = 0
while n <= 0
	print "Combien de personnes se présentent à cette élection? "
	n = gets.to_i
end
puts "----- Votes -----"
for i in 1..n
	r = rand 0..1000
    tot += r
	votes.push(r)
	puts "Le candidat #{i} a obtenu #{r} votes"
end

puts "----- Premier tour -----"
win = false
votes = votes.sort.reverse

per1 = (100 * votes[0]) / tot
puts "Le candidat en tête détient #{per1}% des voies"
per2 = (100 * votes[1]) / tot
puts "Le second candidat détient #{per2}% des voies"

if per1 >= 50
	win = true
	puts "Un vainqueur a été déterminé au premier tout avec #{per1}% des voies!"
end

if win == false
	puts "----- Deuxième tour -----"
	r = rand 0..100
	per1 = r
	puts "Le candidat précédemment en tête obtient #{per1}% des voies"
	per2 = 100 - r
	puts "L'autre obtient #{per2}% des voies"
	if per1 > per2
		puts "C'était attendu! Le gagnant du premier tour remporte l'élection!"
		else
		puts "Revirement de situation! Le deuxième candidat l'emporte!"
	end
end