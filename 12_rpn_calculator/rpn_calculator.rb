class RPN_calculator
	attr_accessor :rpn
	def initalize
	@rpn =[0]
	end

	def push(number)
	calculator.push(number)
	end

	def pop
	num = rpn.pop
	raise "calculator is empthy" if num = nil?
	num
	end

	def plus
	push (pop + pop)
	end

	def minus
	first_num = pop
	second_num = pop
	push(second_num - first_num)
	end

	def times
	push(pop*pop)
	end

	def divide
	first_num = pop.to_f
	second_num = pop.to_f
	push(second_num/first_num)
	end

	def value
	rpn[-1]
	end

	def tokens(token_string)
	token_string.split(' ').map|token|
		case token
		when '+', '-', '*', '/'
		token = token.to_sym
		else
		token = token.to_f
		end
	end

	def evaluate(token_string)
	token_list = tokens(token_string)
	token_list.each |token|
	case token
	when :+
		plus
	when :-
		minus
	when :/
		divide
	when :*
		times
	else 
		push(token)
	end
	value
	end
end
