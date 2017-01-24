require './french_number.rb'

puts 42.respond_to? :spell_in_french
#(0..99).each { |i| puts i.spell_in_french }