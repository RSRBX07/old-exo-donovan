#ecrire une méthode 
# - qui prend une insatnce de Fix_num en argument (accepte de 0 à 99)
# - qui retourne la chaine de caractères du nombre en tout lettre en français

# ------- Methods ------
class FrenchNumber
  def numbers_in_french_unit ; ["zéro", "un", "deux", "trois", "quatre", "cinq", "six", "sept", "huit", "neuf"] end
  def numbers_in_french_deca ; ["dix", "onze", "douze", "treize", "quatorze", "quinze", "seize", "dix-sept", "dix-huit", "dix-neuf"] end
  def numbers_in_french_decamore ; ["","", "vingt ", "trente ", "quarante ", "cinquante ", "soixante ", "soixante-", "quatre-vingt ", "quatre-vingt-"] end

  def num_in_french_v2 num
    return "Entrée erronée" unless input_valid?
    return numbers_in_french_unit[num] if num < 10

    num_deca = num / 10
    num_unit = num % 10

    outnumber = ""

    if num_deca
      outnumber = numbers_in_french_decamore[num_deca]
    end
    if num_deca == 1 || num_deca == 7 || num_deca == 9
      outnumber += numbers_in_french_deca[num_unit]
    else
      if num_unit == 1
        outnumber += "et un"
      else
        if num_unit != 0
            outnumber += numbers_in_french_unit[num_unit]
        end
      end
    end


    outnumber.capitalize
  end

  private

  def input_valid?
    num < 99 || num > 0
  end
    # ------ Application ------
    # print "Entrez le nombre à traduire (v2) : "
    # puts num_in_french_v2 gets.to_i
end