puts "Write a text"
text = gets.chomp
words = text.split(" ")#our delimiter is an space, so we divide the text in words
frequencies = Hash.new(0)#The first time we find the word, it will have a default value of 0
words.each { |words| frequencies[words] +=1# the word itself is a key in frequencies, increment up to 1
}
frequencies = frequencies.sort_by do |word, frequencies|
    frequencies
end
frequencies.reverse!
frequencies.each { |word, frequency|
    puts word + " " + frequency.t_s
}
