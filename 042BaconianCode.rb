def baconian_cipher(encrypted_text) #Crea el método baconian_cipher que recibe un mensaje oculto con el código Bacon y regresa el mensaje original.
	baconian_clue = {"AAAAA" => "a",
					 "AAABA" => "c",
					 "AAABB" => "d",
					 "AABAA" => "e",
					 "ABAAA" => "i",
					 "ABABA" => "l",
					 "ABBAA" => "n",
					 "ABBAB" => "o",
					 "ABBBA" => "p",
					 "BAAAA" => "r",
					 "BAAAB" => "s",
					 "BAABA" => "t",
					 "BAABB" => "v" }
	encrypted_slice = encrypted_text.slice(0..4)
	# def comparison
	# 	if baconian_clue.key == encrypted_slice
	# 		p "Yeah!"
	# 	end
	# end

	baconian_clue.map do |key, value|
  if encrypted_slice ==  baconian_clue[key]
  	encrypted_letter = baconian_clue[key]
  	p encrypted_letter
  end
end
	# p encrypted_slice
	# decoded_message = encrypted_text
end

baconian_cipher("BAABAAABAAAABAABAAABABBBAAABAABAAAAABBABAAAAAABABAAAAAABAAABAAABAABAAAABBAAAAABAABBAB")
# p baconian_cipher("BAABAAABAAAABAABAAABABBBAAABAABAAAAABBABAAAAAABABAAAAAABAAABAAABAABAAAABBAAAAABAABBAB") == "teesperoalascinco"
# p baconian_cipher("ABABAAAAAAAAABAABABAAAAAABAABBAABAAAABAABAAABAAABBABBABBAAABBAABABAAAAAABAABAAAB") == "laclaveesdostres"
# "a8".upto("b6") {|s| print s, ' ' }
# for s in "a8".."b6"
#   print s, ' '
# end
			
