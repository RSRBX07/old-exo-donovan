paragraphe = "-----------------------------------------------------------------"
puts paragraphe

# TD1 Exercice 1
Notes = Array.new()
i = 0
somme = 0
sommeMoy = 0
stop = false
print "Combien d'élèves avez vous? "
ne = gets.to_i
print "Combien de notes par élèves? "
nn = gets.to_i

puts paragraphe

while i != ne
	subNotes = []
	print "Comment s'appelle l'élève? : "
	name = gets.chomp
	subNotes.push(name)
	puts "Entrez les #{nn} notes de #{name} : "
	for j in 1..nn
		while stop == false
			note = gets.to_i
			if note < 0 || note > 20
				puts "Erreur, la note doit être entre 0 et 20."
				stop = false
				else
				stop = true
			end
		end
		stop = false
		subNotes.push(note)
		sommeMoy += note
	end
	Notes.push(subNotes)
	i += 1
end

puts paragraphe

for j in 0..ne-1
	print "Les notes de #{Notes[j][0]} sont : "
	for k in 1..nn
		print "#{Notes[j][k]} "
		somme += Notes[j][k]
	end
	moy = somme / nn
	puts "\nEt sa moyenne est de : #{moy}/20"
	somme = 0
end

puts paragraphe

moy = sommeMoy / (ne * nn)
puts "La moyenne de la classe est de #{moy}"

gets