# Chapter 4: recursive sum

class Sum
	def initialize(arry)
		print "from input of #{arry}, "
		result = sum(arry, 0)
		puts "sum is: #{result}"
	end

	def sum(arry, total)
		if arry.length < 1
			return total
		else
			total = total + arry.pop
			sum(arry,total)
		end
	end
end

# Chapter 4: recursive binary search
# inputs: size of list, random number from within list to find

class Binary
	
	def initialize(list_size, magic_number)
		print "list of size #{list_size}, searching for #{magic_number}. Number of guesses to find: "
		@start = Time.now
		
		@list_size = list_size
		@guesses = 0
		@high = list_size
		@low = 0
		print find(magic_number)
		
		@stop = Time.now
		puts ", took #{(@stop - @start) * 1000} milliseconds"
	end

	def find(magic_number)
		@guesses = @guesses + 1
		mid = (@high + @low) /2
		if mid == magic_number
			return @guesses
		elsif mid > magic_number
			@high = mid - 1
			find(magic_number)
		else
			@low = mid + 1
			find(magic_number)
		end			
	end
end


s = Sum.new([1,2,3,4,5])
b = Binary.new(100000000000, Random.rand(1..100000000000/2))

