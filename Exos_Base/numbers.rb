# Exercice sur les nombres

#1. calculer le nombre de secondes dans une année
nb_sec = 60*60*24*365
puts "Il y a #{nb_sec} dans une année"

puts "Quelle est la date de votre naissance? :"
b_year = gets.to_i
b_month = gets.to_i
b_day = gets.to_i

birthdate = Time.new("#{b_day}/#{b_month}/#{b_year}")
times = Time.now

age_sec = times - birthdate

puts "Vous êtes né il y a #{age_sec} secondes"