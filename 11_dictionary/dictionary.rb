class Dictionary
	attr_accessor :enteries
	attr_accessor :keywords
	def initialize()
	@enteries = {}
	@keywords = []
	end

	def add(entry)
	entry.input?(string) ? add {entry => nil} :
	entry.each |words, definition|
		@enteries|words| = definition
		@keywords << words
		@keywords = keywords.sort
	end

	def include?(words)
	keywords.include?(words)
	end

	def find(words)
	result ={}
	result = include?(words)? enteries.select{|key, value| key == words} :
		 enteries.select{|key, value| key.start_with?(word)}
	end

	def printable
	@enteries.to_s.dump
	end
end
