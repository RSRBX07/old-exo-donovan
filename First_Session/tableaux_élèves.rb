=begin
	--> remplir un tableau de nb élève (avec  1<= nb <= 30) par le nom et la note de chacun.
	--> mettre en ordre décroissant les notes des élèves et afficher la liste finale en indiquant le rang de chaque élève. 
=end


begin
	print "Donner un nombre d'élèves entre 1 et 30  : "
	nbElv = gets.to_i
end while (nbElv<1)||(nbElv>30)

hNotes = {}

puts

for i in 1..nbElv	
	begin		
		print "Nom #{i} : "
		nom = gets.chomp				
	end while (! (('A'..'Z') === nom[0]) && ! (('a'..'z') === nom[0])) 
	begin		
		print "----------> Note #{i} : "
		hNotes[nom] = gets.to_f
	end while(hNotes[nom]<0)||(hNotes[nom]>20) 
end

tNotes = hNotes.sort_by{|name,score| score}
hNotes = Hash[tNotes.reverse]

rang = 1
j = 0
prec = hNotes[0]

for i in hNotes.keys.each
	j += 1;
	if hNotes[i] != prec
		rang = j
	end
	puts "Rang = #{rang}   --->   " + i + "   --->    " + String(hNotes[i]) 
	prec = hNotes[i]
end





