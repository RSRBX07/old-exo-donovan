    require './french_number.rb'

 # ------ Application ------
    translator = FrenchNumber.new
    print "Entrez le nombre à traduire : "
    puts translator.num_in_french gets.to_i