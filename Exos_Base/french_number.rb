#ecrire une méthode 
# - qui prend une insatnce de Fix_num en argument (accepte de 0 à 9)
# - qui retourne la chaine de caractères du nombre en tout lettre en français

# ------- Methods ------

def num_in_french_v1 num
    tout_les_nombre_de_un_a_dix_dans_la_langue_de_moliere = {
        0 => "zéro",
        1 => "un",
        2 => "deux",
        3 => "trois",
        4 => "quatre",
        5 => "cinq",
        6 => "six",
        7 => "sept",
        8 => "huit",
        9 => "neuf"
    }
    if num > 9 || num < 0
        return "Entrée erronée"
    else
        return "#{tout_les_nombre_de_un_a_dix_dans_la_langue_de_moliere[num]}"
    end
end

def num_in_french_v2 num
    numbers_in_french_unit = ["zéro", "un", "deux", "trois", "quatre", "cinq", "six", "sept", "huit", "neuf"]
    numbers_in_french_deca = ["dix", "onze", "douze", "treize", "quatorze", "quinze", "seize", "dix-sept", "dix-huit", "dix-neuf"]
    numbers_in_french_decamore = [numbers_in_french_unit,"", "vingt ", "trente ", "quarante ", "cinquante ", "soixante ", "soixante ", "quatre-vingt ", "quatre-vingt "]

    if num < 99 || num > 0
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
                outnumber += numbers_in_french_unit[num_unit]
            end
        end
        return outnumber.capitalize
    else
        return "Entrée erronée"
    end
end



# ------ Application ------

#print "Entrez le nombre à traduire (v1) : "
#puts num_in_french_v1 gets.to_i

print "Entrez le nombre à traduire (v2) : "
puts num_in_french_v2 gets.to_i

