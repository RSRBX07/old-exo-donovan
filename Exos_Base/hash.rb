#exercice code postal
hash_lomme = {
    "code postal" => 59160,
    "pays" => "France",
    "departement" => "Nord"
}
hash_namur = {
    "code postal" => 5000,
    "pays" => "Belgique",
    "departement" => "Wallonie"
}
hash = {
    lomme: hash_lomme,
    namur: hash_namur
}


print "Quel est le nom de votre ville? : "
nom_ville =  gets.chomp.downcase.to_sym

if hash[nom_ville]
    puts "#{nom_ville.capitalize} a pour code postal #{hash[nom_ville]["code postal"]} et se trouve en #{hash[nom_ville]["pays"]} ( #{hash[nom_ville]["departement"]} ) "
else
    puts "#{nom_ville.capitalize} n'est pas référencée"
end