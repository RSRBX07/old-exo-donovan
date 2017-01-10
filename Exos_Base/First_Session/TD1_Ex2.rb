#TD1 Exercice 2
print "Entrez la taille du tableau : "
n = gets.to_i

ftab = Array.new()
for i in 0..n-1
	r = rand 0..100
	ftab.push(r)
end
puts "Dans le désordre : "
puts ftab.inspect

ftab = ftab.sort
stab = Array.new()
itab = Array.new()

ftab.each do |value|
    if(value%2 == 0)
		stab.push(value)
	else
		itab.push(value)
	end
end

itab.each do |imp|
	stab.push(imp)
end
puts "Avec les nombres pair en premier"
puts stab.inspect
gets