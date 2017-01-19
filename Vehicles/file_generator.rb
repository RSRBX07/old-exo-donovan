# # Crée un nouveau fichier et écrit dessus
# File.open('test.rb', 'w') do |f1|  
#   f1.puts "Ben on va tester ce truc hein!"  
#   #Okay pour le texte, mais comment faire pour les variables?
  
# end  

# #ouvre et lit un fichier (attention il est automatiquement fermé à la fin de la boucle) 
# File.open('test.rb', 'r') do |f2|  
#   while line = f2.gets  
#     puts line
#   end  
# end  

#test avec un fichier contenant du code 
def get_file_result
  i = 0
  container = []
  File.open('test.rb', 'r') do |file|  
    file.each_line do |line|
      container[i] = line.to_i
    i += 1
    end
  end
  return container
end  

container = get_file_result
count_1 = container[0]
count_2 = container[1]
count_3 = container[2]

File.open('test.rb', 'w') do |file|  
  file.write (count_1 + count_3)
  file.puts ("\n")
  file.write (count_2 * 2)
  file.puts ("\n")
  file.write (count_3 + count_2 - count_1)
end 


puts container.inspect


