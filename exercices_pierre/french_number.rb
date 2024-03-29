#ecrire une méthode 
# - qui prend une insatnce de Fix_num en argument (accepte de 0 à 99)
# - qui retourne la chaine de caractères du nombre en tout lettre en français

# ------- Methods ------
class FrenchNumber
  def numbers_in_french_unit ; ["zéro", "un", "deux", "trois", "quatre", "cinq", "six", "sept", "huit", "neuf"] end
  def numbers_in_french_to_twenty ; ["dix", "onze", "douze", "treize", "quatorze", "quinze", "seize", "dix-sept", "dix-huit", "dix-neuf"] end
  def numbers_in_french_deca ; ["","", "vingt ", "trente ", "quarante ", "cinquante ", "soixante ", "soixante-", "quatre-vingt ", "quatre-vingt-"] end

  def num_in_french num
    return "Entrée erronée" if num < 0 || num > 99
    return numbers_in_french_unit[num].capitalize if num < 10

    num_deca = num / 10
    num_unit = num % 10

    outnumber = numbers_in_french_deca[num_deca]
    if num_deca == 1 || num_deca == 7 || num_deca == 9
      outnumber += numbers_in_french_to_twenty[num_unit]
    elsif num_unit == 1
      outnumber += "et un"
    elsif num_unit != 0
      outnumber += numbers_in_french_unit[num_unit]
    end
    outnumber.capitalize
  end

end
