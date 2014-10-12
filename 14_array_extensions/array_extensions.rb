class Array
	def sum
	sum = 0
	self.each {|number| sum+= number}
	return sum
	end

	def square
	square = []
	if self.empty?
		return self
	else
		self.each {|number| square.push(number*number)}
	end
	return square
	end

	def square!
	if self.empty?
		return self
	else
		self.map! |number|
            number*number
	end
	return self
	end
end

