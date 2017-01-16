class Avatar

#init
  def init
    print "Comment vous appelez vous? : "
    @name = gets.chomp
    @spent_money = 0
    @earned_money = 0
  end

#getters
  def get_spent_money
    return @spent_money
  end

  def get_earned_money
    return @earned_money
  end

  def get_name
    return @name
  end

  def get_numeros_gagnants
    return @numeros_gagnants
  end

#setters
  def spend_money value
    @spent_money += value
  end
  
  def earn_money value
    @earned_money += value
  end

#methods
  def display_infos
    puts "#{@name} a dépensé #{@spent_money}€ et a gagné #{@earned_money}€"
  end

  def tirage_joueur rand_tirage_joueur
    if rand_tirage_joueur 
        puts "Vos numéros sont : #{@votre_grille = Array.new((1..45).to_a).shuffle.take(5).sort}" #  => A éviter!
    else
        @votre_grille = Array.new
        puts "Veuillez saisir 5 numéros de 0 à 45 :"
        (0..4).each do
            input = gets.to_i
            while input < 0 || input > 45
                puts "Saisie erronnée, veuillez resaisir :"
                input = gets.to_i
            end
            @votre_grille.push(input)
        end
    end
  end

  def numeros_trouves tirage
    @numeros_gagnants = 0
    tirage.each do |i| 
        @votre_grille.each do |j| 
            if i == j
                @numeros_gagnants += 1
            end
        end
    end
    puts "Vous avez #{@numeros_gagnants} numéros gagnants"
  end

  def calcul_montant_gagne company
    if @numeros_gagnants != 5 && @numeros_gagnants != 0
        coef_gain = @numeros_gagnants.to_f / 5
        montant_gagne = (company.get_cagnote * coef_gain**12).to_i
        puts "Vous obtenez #{montant_gagne}€"
        company.decrement_cagnote montant_gagne
        self.earn_money montant_gagne
    elsif @numeros_gagnants == 0
        puts "Vous avez perdu"
    else
        puts "Vous gagnez le gros lot de #{company.get_cagnote}€! Félicitation!"
        self.earn_money(company.get_cagnote)
        company.decrement_cagnote(company.get_cagnote)
    end
  end

end