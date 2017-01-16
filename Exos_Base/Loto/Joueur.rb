class Joueur

    def get_amount_win tirage,cagnote,time
        coef_gain = get_correct_numbers(tirage).to_f / 5
        return (cagnote* time.get_coef_event * coef_gain**12).to_i
    end

    def get_correct_numbers tirage
        grille = Array.new((1..45).to_a).shuffle.take(5).sort
        numeros_gagnants = 0
        tirage.each do |i| 
            grille.each do |j| 
                if i == j
                    numeros_gagnants += 1
                end
            end
        end
        win_jackpot if numeros_gagnants == 5
        return numeros_gagnants
    end

    def win_jackpot
        @won = true
    end

    def set_won
        @won = false
    end

    def get_won
        return @won
    end
end