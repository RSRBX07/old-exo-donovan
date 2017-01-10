
#Voici un exemple d'utilistion de 'tableau' associatifs
#qu'on appelle hash en ruby

#création du tableau associatifs
struc = {"3" => 4, "5" => 6} 

#Exemple pour afficher un seul élément
puts struc["3"]

# Voici une methode pour lister tous les clef valeurs du tableau
struc.each_pair do |key, value|
    puts "#{key} #{value}"
end



# deuxième méthode (sans hash) avec array
# La première solution est recommandée

arr = [["cle1",4],["cle2",6]]

# puts arr["cle1"]   => ne marche pas !

arr.each do |(a,b)|
  puts "#{a} #{b}"
end