def translate(statment)
	words = statment.split(" ")
	vowels = ['a', 'e', 'i', 'o', 'u', 'y']
	phrase = []
	
	words.each do |word|
	word_array = word.split(//)
	first_letter = []
	word_array.each_with_index do |letter, index|
	if vowels.include?(letter)
	break unless letter == 'u' && word_array[index - 1] == "q"
	end
	
	first_letter.push(letter)
	end
	
	first_letter_string = first_letter.join
	rest_of_letters = word_array.join
	rest_of_letters.sub!(first_letter_string)
	phrase.push(rest_of_letters + first_letter_string + 'ay')
	end

	return phrase.join(" ")
	end
