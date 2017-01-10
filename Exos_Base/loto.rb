#init variables
cagnote = 0
benefice = 0
prix_billet = 2
rand_nb_joueurs = true
nb_joueurs = 1

stop = false
while stop == false
    
    #nombre de joueurs aléatoire
    if rand_nb_joueurs == true
        nb_joueurs = Random.rand(1..10000)
    end
    puts "#{nb_joueurs} ont participé au tirage"

    #calcul cagnote (20% de commission)
    benefice += prix_billet*nb_joueurs*0.2
    cagnote += prix_billet*nb_joueurs*0.8

    #affichage de la cagnotte
    puts "Le montant de la cagnote est de #{cagnote} €"

    #calcul du tirage
    puts "Les résultats du tirage sont : #{tirage = Array.new((1..45).to_a).shuffle.take(5).sort}"

    #calcul de vos numéros
    puts "Vos numéros sont : #{votre_grille = Array.new((1..45).to_a).shuffle.take(5).sort}"

    #Nombre de numéros trouvés
    numeros_gagnants = 0
    tirage.each do |i| 
        votre_grille.each do |j| 
            if i == j
                numeros_gagnants += 1
            end
        end
    end
    puts "Vous avez #{numeros_gagnants} numéros gagnants"

    #Calcul montant gagné
    if numeros_gagnants != 5 && numeros_gagnants != 0
        coef_gain = Math.sqrt(5 / numeros_gagnants)
        montant_gagne = (cagnote * coef_gain).to_i
        puts "Vous obtenez #{montant_gagne}€"
        cagnote -= montant_gagne
    elsif numeros_gagnants == 0
        puts "Vous avez perdu"
    else
        puts "Vous gagnez le gros lot de #{cagnote}! Félicitation!"
        cagnote = 0;
    end

    #Stop?
    puts "Arrêter? (stop)"
    input = gets.chomp
    if input == "stop"
        stop = true
    end

end



