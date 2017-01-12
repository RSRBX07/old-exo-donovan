

hash = {
    "lomme" => 59160,
    "namur" => 5000
}

print "Quel est le nom de votre ville? : "
nom_ville =  gets.chomp
nom_ville.downcase!

if hash[nom_ville]
    puts "#{nom_ville.capitalize} a pour code postal #{hash[nom_ville]}"
else
    puts "#{nom_ville.capitalize} n'est pas référencée"
end