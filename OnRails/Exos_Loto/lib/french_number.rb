# on reouvre la classe Fixnum pour la modifier
class Fixnum
  def spell_in_french
    units_strings = ["zero", "un", "deux", "trois", "quatre", "cinq", "six", "sept", "huit", "neuf"]
    return units_strings[self] if self < 10
    deci_strings = ["","dix", "vingt", "trente", "quarante", "cinquante", "soixante", "soixante-dix", "quatrevingt", "quatrevingt-dix"]
    return deci_strings[self/10] + "-" + (self % 10).spell_in_french if (10..99).include? self 
  end
end
