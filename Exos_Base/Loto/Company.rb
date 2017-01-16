class Company

  def init_variables
    @benefice = 0
    @cagnote = 50000
    @prix_billet = 2
  end

  def increment_cagnote value
    @cagnote += value
    check_refil
  end

  def decrement_cagnote value
    @cagnote -= value
    check_refil
  end

  def check_refil
    if @cagnote < 10000
      if @benefice > 100000
        @cagnote += 100000
        @benefice -= 100000
      else
        @cagnote += (0.5*@benefice).to_i
        @benefice -= (0.5*@benefice).to_i
      end
    end
  end

  def calculate_cagnotte nb_joueurs
    @benefice += (@prix_billet*nb_joueurs*0.2).to_i
    @cagnote += (@prix_billet*nb_joueurs*0.8).to_i
  end

  def display_cagnotte
    puts "Le montant de la cagnote est de #{@cagnote} €"
    puts "Le société a gagné #{@benefice}€ au total avec les paris"
  end

  def get_benef
    return @benefice
  end

  def get_cagnote
    return @cagnote
  end

  def get_ticket_price
    return @prix_billet
  end


end