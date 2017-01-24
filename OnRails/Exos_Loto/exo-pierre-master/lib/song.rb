=begin

Chant de marche
=============

Ma poule n'a plus qu'vingt-neuf poussins (bis)
Elle en a eu trente, la moitié d' soixante.
refrain
Allongeons la jambe, la jambe
Car la route est longue! (bis)
Ma poule n'a plus qu'vingt-huit poussins (bis)
Elle en a eu trente, la moitié d' soixante.
[...]
avant dernier couplet
Ma poule n'a plus qu'un seul poussin (bis)
Elle en a eu trente, la moitié d' soixante.
[...]
dernier couplet
Ma poule n'a plus aucun poussin (bis)
Elle en a eu trente, la moitié d' soixante.
=end

ch1 = "Ma poul' n'a plus que "

ch2 = " poussins"

ch3 = "Elle en avait trente.\n"

ch4 ="Allongeons la jambe, \n Allongeons la jambe, la jambe.\n Car la route est longue.\n"



29.times do |i|

    ch = ch1 + String(30-i) + ch2 +",\n" + ch1 + String(30-i) + ch2 +".\n" + ch3  + ch4 + ch4 + "\n\n"    

    puts ch

end