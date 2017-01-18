puts "Entrez votre prénom"
fName = gets.chomp.capitalize
puts "Entrez votre nom"
lName = gets.chomp.upcase

puts "Bonjour #{fName} #{lName}!"

for i in 0..2
    puts "Salut"
end
# ou
3.times do puts "Salut" end

initiales = fName[0] + lName[0]
puts "Vos initiales sont #{initiales}"
