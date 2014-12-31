class Recursion
	def initialize(num)
		countdown(num)
	end

	def countdown(num)
		print "#{num}..."
		if num <=0
			puts " -> BANG! <-"
			return
		else
			countdown (num - 1)
		end
	end
end

class Factorial
	def initialize(num)
		puts factor(num)

	end

	def factor(num)
		if num == 1;
			return 1
		else
			return num * factor(num -1)
		end
	end
end

class Double
	def initialize
		@count = 0
		@days = 30
		@numsum = 1
		double(1) 
		puts @numsum/ 100.0
	end

	def double(num)
		@count = @count + 1
		if @count > @days
			return num
		else
			num = num * 2
			@numsum = @numsum + num
			puts "num now: #{num}"
			double(num)
		end
	end
end

r = Recursion.new(10)
f = Factorial.new(6)
d = Double.new()