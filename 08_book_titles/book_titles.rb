class Book
	attr_accessor :title
	def title=(book)
	book_title = book.split(" ")
	book_title.map! do |word|
	if ["and", "in", "the", "an", "a", "of"].include?
	puts word.downcase
	else
	puts word.capitalize
	end
	end
	book_title[0].capitalize
	title= book_title.join(" ")
	end
end
