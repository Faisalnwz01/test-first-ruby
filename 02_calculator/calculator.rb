def add(a,b)
	a + b
end

def subtract(a,b)
	a - b
end

def sum(array)
	sum = 0
	array.each do |s|
	sum = sum + s
	end
	return sum
end

def multiply(*num)
	answer = 1
	num.each do |n|
	answer = answer *n
	end
	return answer
end

def power(a,b)
	a**b
end

def factorial(numbers)
	if numbers == 0
		return 1
	else
	factorial = 1
	1.upto(numbers) do |i|
	factorial = factorial * i
	end
	end
end
