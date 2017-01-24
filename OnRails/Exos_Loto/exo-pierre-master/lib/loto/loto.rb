require 'date'
class Loto

  def self.get_grid
    grid = []
    5.times do
      input = gets.to_i
      grid << input
    end
    grid
  end

  def self.get_flash
    (1..45).to_a.shuffle.take 5
  end

  def has_winner?
    #comprer tous les bulletins valides avec la grille gagnante
    sorted_draw = draw.sort
    @saved_grids.each do |grid|
      sorted_grid = grid.sort
      return true if sorted_grid == sorted_draw
    end
    return false
  end

  # enregistre une grille
  # pour le loto courant
  def validate_grid grid
    #verifier que le tirage n'a pas encore eu lieu
    
    @saved_grids ||= []
    # TODO check draw isnot yet done
    return  @saved_grids if draw_done?
    @saved_grids.push grid
  end
  # demander une grille de jeu

  # affichage du montant de la cagnote
  # entre 100 et 500.000 Euros
  # le vendredi 13, la cagnote est de 2 millions
  def vendredi_13?
    Date.today.day == 13 && Date.today.friday?
  end

  def check_grid grid
    # afficher si gagne ou perdu
    if grid.sort == draw.sort
      puts "You win #{prize}!"
    else
      puts "You loose !"
    end
  end

  def draw
    available_balls = (1..45).to_a
    # shuffle balls and take 5
    # @picked_balls ||= available_balls.shuffle.take(5)
    @picked_balls = @picked_balls || available_balls.shuffle.take(5)

    puts "Le tirage du jour est : #{@picked_balls.sort}" 
    @picked_balls
  end

  def draw_done?
    !@picked_balls.to_a.empty?
  end

  private

  def prize
    if vendredi_13?
      2_000_000
    else
      100_000
    end
  end
  
end