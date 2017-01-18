
notes = [1,5,9,7,12]

for i in 1..5
	print "donner votre note"
	note = gets.to_i
	notes.push(note)
end

notes.each do |cur_note|
   if(cur_note > 10)
		puts cur_note
	end
end


for i in 0..notes.size-1
	puts notes[i]
end

gets