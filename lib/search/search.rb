module Search
	class Binary
		
		def initialize(list_size, magic_number)
			@num = magic_number.to_i
			@size = list_size.to_i
			print
			reset
			find
		end

		private
			def find
				start = Time.now
				while @low <= @high do
					@count = @count + 1
					mid = (@low + @high)/2
					guess = mid
					if guess == @num
						stop = Time.now
						@low = @high + 1
						puts "Correct guess in #{@count} tries, time: #{(stop - start) * 1000} milliseconds"
					else
						if guess > @num
							@high = mid - 1
						else 
							@low = mid + 1
						end
					end
				end
			end

			def reset
				@low = 0
				@count = 0
				@high = @size - 1
			end

			def print
				puts "=========================="
				puts "Initializing Binary Search"
				puts "Big O -> O(log n)"
				puts "List Size: #{@size}"
				puts "Number to find: #{@num}"
				puts "=========================="
			end
	end

	class Simple
		
		def initialize(list_size, magic_number)
			@size = list_size.to_i
			@num = magic_number.to_i
			print
			reset
			find
		end

		private
			def find
				start = Time.now
				(0..@size).each do |x|
					@count = @count + 1
					if x == @num
						stop = Time.now
						puts "Correct guess in #{@count} tries, time: #{(stop - start) * 1000} milliseconds"
					end
				end
			end

			def reset
				@count = 0
			end

			def print
				puts "=========================="
				puts "Initializing Simple Search"
				puts "Big O -> O(n)"
				puts "List Size: #{@size}"
				puts "Number to find: #{@num}"
				puts "=========================="
			end
	end
end

ARGV.each do |a|
	magic_number = Random.rand(1..a.to_i)
	b = Search::Binary.new(a, magic_number)
	s = Search::Simple.new(a, magic_number)
end