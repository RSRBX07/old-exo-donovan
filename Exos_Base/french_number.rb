#ecrire une méthode 
# - qui prend une insatnce de Fix_num en argument (accepte de 0 à 9)
# - qui retourne la chaine de caractères du nombre en tout lettre en français

def fix_num num
    hash = {
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
        return "#{hash[num]}"
    end
end

def fix_num_v2 num
    tab = ["zéro", "un", "deux", "trois", "quatre", "cinq", "six", "sept", "huit", "neuf"]
    return tab[num] if num < 9 || num > 0
    return  "Entrée erronée"
end

print "Entrez le nombre à traduire (v1) : "
puts fix_num gets.to_i

print "Entrez le nombre à traduire (v2) : "
puts fix_num_v2 gets.to_i

