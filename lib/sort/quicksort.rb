module Sort
	class Quicksort
		def initialize (unsorted)
      @opts = 0
			print "input: #{unsorted}"
			puts "... sorting."
			if unsorted.length < 2
		 		print unsorted
		 		puts " no need to sort, less than 2 elements"
		 	# elsif unsorted.length == 2
		 	# 	print sort(unsorted)
		 	# 	puts " sorted two elements"
      else
        start = Time.now
		 		p quick(unsorted)
        stop = Time.now
        puts "Operation completed in: #{(stop - start) * 1000} milliseconds, #{@opts} operations"
      end
 		end

    #find a pivot in an array, return left, pivot and right
 		def quick(unsorted)
 			if unsorted.length < 2
        @opts = @opts + 1
        unsorted
      else
        pivot = unsorted[unsorted.length/2]
        left = []
        right = []
        unsorted.each do |x|
          @opts = @opts + 1
          if x > pivot
            right << x
          elsif x < pivot
            left << x
          end
        end
        (quick(left) << pivot) + quick(right)
      end
    end

    #sort array of length == 2
 		def sort(unsorted)
 			if unsorted[0] > unsorted[1]
	 			sorted = []
		 		sorted << unsorted[1] 
		 		sorted << unsorted[0]
		 	else
		 		unsorted
		 	end
 		end

	end
end
#
# q = Sort::Quicksort.new([1])
# q = Sort::Quicksort.new([10, 5])
# q = Sort::Quicksort.new([1, 2])
q = Sort::Quicksort.new([2,33,4,63,21,55,67,86,43,98,62,87,91,1,22,11,9,6,114,110,412,62])