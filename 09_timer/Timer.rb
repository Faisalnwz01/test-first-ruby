class Timer
	attr_accessor :second
	def initialize(second=0)
		@second = second
	end

	def time
	@hour = (@second / 60) / 60
	@second -= @hour * 3600
	@minute = @second / 60
	@second = @minute * 60
	@time_string = @hours.to_s.rjust(2, "0") + ":" + @minutes.to_s.rjust(2, "0") + ":" + @seconds.to_s.rjust(2, "0")
	end
end

