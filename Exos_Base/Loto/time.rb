class Time
  
  def init
    @jours = ["lundi", "mardi", "mercredi", "jeudi", "vendredi", "samedi", "dimanche"]
    @mois = ["janvier", "février", "mars", "avril", "mai", "juin", "juillet", "août", "septembre", "octobre", "novembre", "décembre"]
    @evenements = [nil,"du vendredi 13", "du nouvel an","d'halloween"]
    @index_day = 0
    @day = 1
    @index_month = 0
    @year = 1
    @index_evenement = 0
  end

  def increment_day 
    @index_day += 1
    @index_day = 0 if @index_day == 7
    @day += 1
    if @day == 31
      @day = 1 
      @index_month += 1
      if @index_month == 12
        @index_month = 0
        @year += 1
      end
    end
    check_evenement
  end

  def check_evenement
    @index_evenement = 0
    @index_evenement = 1 if @index_day == 4 && @day == 13
    @index_evenement = 2 if @index_month == 0 && @day == 1
    @index_evenement = 3 if @index_month == 9 && @day == 30
  end

  def get_coef_event
    if @index_evenement != 0
      return 4
    else
      return 1
    end
  end


  def draw_date
    puts "Tirage du #{@jours[@index_day]} #{@day} #{@mois[@index_month]} #{@year}"
    puts "Aujourd'hui, super loto #{@evenements[@index_evenement]}!"if @index_evenement != 0
  end




end