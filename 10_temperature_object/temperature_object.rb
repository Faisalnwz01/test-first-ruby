class Temperatures
	attr_accessor :temperature, :degrees
	def initialize(temp)
		@temperature = temp.temperature
		@degrees = temp.degree.join.to_f
	end
	def in_fahrenheit
	if temperature == [:f]
		@degree
	elsif @temperature == [:c]
      	((@degree* 9) / 5) + 32
      	end
    end
    def in_celsius
    if temperature == [:c]
    	@degree
    elseif @temperature == [:f]
    	(@degree - 32) * 5 / 9
    	end
    end
	def self.from_celsius(celsius)
    	Temperatures.new(:c => celsius)
  	end
  	def self.from_farenheit(faren)
  		Temperatures.new(:f => faren)
  	end
end

class celsius < Temperatures
	def initialize(celsius)
	super(:c => celsius)
	end
end

class fahrenheit < Temperatures
	def initialize(faren)
	super(:f => faren)
	end
end


