require './Exos_Base/Loto/joueur.rb'
require './Exos_Base/Loto/company.rb'
require './Exos_Base/Loto/avatar.rb'
require './Exos_Base/Loto/time.rb'

#init variables
avatar = Avatar.new
avatar.init
company = Company.new
company.init_variables
time = Time.new
time.init
nb_joueurs = 1
nb_essais = 0

#Config -----------
rand_nb_joueurs = true
rand_tirage_joueur = true
tirage_auto = false
#------------------

stop = false
while stop == false  
    #gestion des evenements temporels
    time.increment_day
    time.draw_date

    #nombre de joueurs aléatoire
    if rand_nb_joueurs == true
        nb_joueurs = Random.rand(1..1000)
    end
    puts "#{nb_joueurs}personnes ont participé au tirage"

    #calcul cagnote (20% de commission)
    company.calculate_cagnotte nb_joueurs

    #affichage de la cagnotte
    company.display_cagnotte

    #calcul depenses Joueur
    avatar.spend_money(company.get_ticket_price)

    #calcul du tirage
    puts "Les résultats du tirage sont : #{tirage = Array.new((1..45).to_a).shuffle.take(5).sort}"

    #calcul de vos numéros
    avatar.tirage_joueur rand_tirage_joueur

    #Nombre de numéros trouvés
    avatar.numeros_trouves tirage

    #Calcul montant gagné
    avatar.calcul_montant_gagne company,time

    #Calcul autres joueurs
    gains_autres_joueurs = 0
    other_player = Joueur.new
    other_player.set_won
    nb_joueurs.times do
        gains_autres_joueurs += other_player.get_amount_win tirage,company.get_cagnote,time
    end
    company.decrement_cagnote gains_autres_joueurs
    puts "Les #{nb_joueurs} autres joueurs qui ont participé ont au total gagné #{gains_autres_joueurs}€"

    if other_player.get_won == true
        puts "Un Joueur a touché le jackpot!"
    else
        puts "Personne n'a touché le jackpot"
    end

    #affichage stats avatar
    avatar.display_infos

    #test sortie boucle
    if tirage_auto == false
        #Stop?
        puts "Arrêter? (stop)"
        input = gets.chomp
        if input == "stop"
            stop = true
        end
    end

    nb_essais += 1
end

#puts "#{nb_essais} essais ont été nécessaires pour gagner"
