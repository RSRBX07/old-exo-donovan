#init variables
cagnote = 0
benefice = 0
prix_billet = 2
rand_nb_joueurs = true
rand_tirage_joueur = true
nb_joueurs = 1

stop = false
while stop == false
    
    #nombre de joueurs aléatoire
    if rand_nb_joueurs == true
        nb_joueurs = Random.rand(1..10000)
    end
    puts "#{nb_joueurs} ont participé au tirage"

    #calcul cagnote (20% de commission)
    benefice += (prix_billet*nb_joueurs*0.2).to_i
    cagnote += (prix_billet*nb_joueurs*0.8).to_i

    #affichage de la cagnotte
    puts "Le montant de la cagnote est de #{cagnote} €"
    puts "Le société a gagné #{benefice}€ au total avec les paris"

    #calcul du tirage
    puts "Les résultats du tirage sont : #{tirage = Array.new((1..45).to_a).shuffle.take(5).sort}"

    #calcul de vos numéros
    if rand_tirage_joueur 
        puts "Vos numéros sont : #{votre_grille = Array.new((1..45).to_a).shuffle.take(5).sort}" #  => A éviter!
    else
        votre_grille = Array.new
        puts "Veuillez saisir 5 numéros de 0 à 45 :"
        (0..4).each do
            input = gets.to_i
            while input < 0 || input > 45
                puts "Saisie erronnée, veuillez resaisir :"
                input = gets.to_i
            end
            votre_grille.push(input)
        end
    end

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
        coef_gain = numeros_gagnants.to_f / 5
        montant_gagne = (cagnote * coef_gain * coef_gain).to_i
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



