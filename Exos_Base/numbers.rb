# Exercice sur les nombres

#1. calculer le nombre de secondes dans une année
nb_sec = 60*60*24*365
puts "Il y a #{nb_sec} dans une année"

#2. nombre de secondes depuis notre naissance
puts "Quelle est la date de votre naissance? :"
b_year = gets.to_i
b_month = gets.to_i
b_day = gets.to_i

birthdate = Time.new("#{b_day}/#{b_month}/#{b_year}")
times = Time.now

age_sec = times - birthdate

puts "Vous êtes né il y a #{age_sec} secondes"

#3. trouver la velur de l'origine
origin = Time.new(0)
puts "Date d'origine : #{origin.year} / #{origin.month} / #{origin.day}"
elapsed = times - origin
puts "Il s'est donc écoulé : #{elapsed.year} années / #{origin.month} mois / #{origin.day} jours"