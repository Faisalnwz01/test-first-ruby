def echo(word)
	word
end

def shout(words)
	 words.upcase
end

def repeat(string, number=2)
	result = string
	2.upto(number) do
	result = result + " " + string
	end
	return result
end

def start_of_word(word, numbers)
	word.slice(0, numbers)
end

def first_word(words)
	words.split(" ")[0]
end

def titleize(string)
	array = string.split(" ")
	array.map do |word|
	word.capitalize! unless ["and", "or", "in", "the", "of", "is", "a", "over"].include? (word)
	end
	array[0].capitalize!
	array.join(" ")
end
