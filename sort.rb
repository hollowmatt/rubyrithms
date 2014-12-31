 module Sort
 	class Selection
 		def initialize (input_array)
 			puts "original array: #{input_array}"
 			puts "array size: #{input_array.length}"
 			@operations = 0
 			@array = input_array
 			@sorted = []
 			sort_asc
 			puts "sorted array: #{@sorted}"
 			puts "number of operations: #{@operations}"
 		end

 		def sort_asc
 			@sorted_array = []
 			(1..@array.length).each do |x|
	 			@operations = @operations + 1
	 			smallest = find_smallest(@array)
	 			@sorted << smallest
	 			@array.delete(smallest)
	 		end
 		end

 		private 
 			def find_smallest(ary)
 				smallest_index = 0
 				smallest = ary[0]
 			
 				(1..ary.length-1).each do |x|
	 				@operations = @operations + 1
	 				if ary[x] < smallest
	 					smallest = ary[x]
	 					smallest_index = x
	 				end
	 			end
	 			return smallest
 			end
 	end

 	class Generic
 		def initialize
 		end

 		def sort_asc
 		end

 end
end

s = Sort::Selection.new([20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0])