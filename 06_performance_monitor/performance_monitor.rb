def performance_monitor(i=1)
	total_time []
	start_time = Time.now
	i.time do
	yield
	end_time = Time.now
	total_time = start_time - end_time
	end
	total_time / i
end
