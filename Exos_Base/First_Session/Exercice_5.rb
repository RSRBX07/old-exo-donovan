paragraphe = "-------------------------------------------------------------------------------"
puts paragraphe

# Exercice 12
stop = false
puts "Dans l'équation ax²+ bx + c avec a non nul, que vaut : "
while stop == false
	print "a = "
	a = gets.to_i
	if a != 0
		stop = true
		else
		puts "a ne peut être nul"
	end
end
print "b = "
b = gets.to_i
print "c = "
c = gets.to_i

delta = b * b - 4 * a * c

if delta < 0
	puts "Il n'y a pas de solution"
end

if delta == 0
	x = -b / (2 * a)
	puts "x vaut #{x}"
end

if delta > 0
	Rdelta = Math.sqrt(delta)
	x1 = ( -b - Rdelta) / ( 2 * a )
	x2 = ( -b + Rdelta) / ( 2 * a )
	puts "x1 vaut #{x1} et x2 vaut #{x2}"
end
